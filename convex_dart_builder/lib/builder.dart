import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:convert';
import 'package:path/path.dart' as path;
import 'package:build/build.dart';
import 'package:convex_dart_builder/src/types.dart';
// ignore: implementation_imports
import 'package:build_runner_core/src/generate/build_step_impl.dart';

/// Returns a [Builder] for router generation
Builder convexDartBuilder(BuilderOptions options) {
  if (options.config['input_file'] == null) {
    throw Exception(
      'convex_dart_builder requires that the input_file option is set in the build.yaml file',
    );
  }
  return ConvexDartBuilder(options);
}

class ConvexDartBuilder extends Builder {
  final BuilderOptions options;

  ConvexDartBuilder(this.options);

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    if (buildStep.inputId.path != options.config['input_file']) {
      return;
    }
    
    // Read the schema.json file
    final contents = await buildStep.readAsString(buildStep.inputId);

    // Get the absolute path to the schema.json file
    final buildStepImpl = buildStep as BuildStepImpl;
    final schemaPath = buildStepImpl.assetPathProvider.pathFor(
      buildStep.inputId,
    );
    
    // Get a list of all the .dart files in the lib directory
    final libPath = path.dirname(schemaPath);
    final libDir = Directory(libPath);
    
    // Read mapping and ObjectBox functions files if specified
    Map<String, dynamic>? mappingData;
    Map<String, dynamic>? objectBoxFunctionsData;
    
    // Read mapping file
    final mappingFile = options.config['mapping_file'] as String?;
    if (mappingFile != null) {
      try {
        final mappingPath = path.join(libPath, mappingFile.startsWith('lib/') ? mappingFile.substring(4) : mappingFile);
        final mappingContent = await File(mappingPath).readAsString();
        mappingData = jsonDecode(mappingContent) as Map<String, dynamic>;
        print("DEBUG: Loaded mapping file with ${mappingData.length} endpoints");
      } catch (e) {
        print("WARNING: Failed to load mapping file: $e");
      }
    }
    
    // Read ObjectBox functions file
    final objectBoxFunctionsFile = options.config['objectbox_functions_file'] as String?;
    if (objectBoxFunctionsFile != null) {
      try {
        final objectBoxPath = path.join(libPath, objectBoxFunctionsFile.startsWith('lib/') ? objectBoxFunctionsFile.substring(4) : objectBoxFunctionsFile);
        final objectBoxContent = await File(objectBoxPath).readAsString();
        objectBoxFunctionsData = jsonDecode(objectBoxContent) as Map<String, dynamic>;
        final functions = objectBoxFunctionsData['functions'] as List?;
        print("DEBUG: Loaded ObjectBox functions file with ${functions?.length ?? 0} functions");
      } catch (e) {
        print("WARNING: Failed to load ObjectBox functions file: $e");
      }
    }
    
    // Wipe any existing dart files
    await wipeDartFiles(libDir);

    print("DEBUG: Starting schema parsing...");

    // Parse JSON manually first to debug
    Map<String, dynamic> jsonData;
    try {
      jsonData = jsonDecode(contents) as Map<String, dynamic>;
      print("DEBUG: JSON parsed successfully");
    } catch (e) {
      print("ERROR: Failed to parse JSON: $e");
      rethrow;
    }

    // Check functions array
    if (jsonData['functions'] is List) {
      final functions = jsonData['functions'] as List;
      print("DEBUG: Found ${functions.length} functions");

      // Check each function for args field - only show missing ones
      int missingArgsCount = 0;
      for (int i = 0; i < functions.length; i++) {
        final func = functions[i];
        if (func is Map<String, dynamic>) {
          final identifier = func['identifier'] ?? 'unknown';
          if (!func.containsKey('args')) {
            missingArgsCount++;
            print(
              "ERROR: Function at index $i (identifier: $identifier) is missing 'args' field",
            );
            print("ERROR: Function keys: ${func.keys.toList()}");

            // Only show the first few missing args to avoid overflow
            if (missingArgsCount <= 3) {
              print("ERROR: Function content: ${jsonEncode(func)}");
            }
          }
        } else {
          print(
            "ERROR: Function at index $i is not a Map: ${func.runtimeType}",
          );
        }
      }
      print("DEBUG: Functions missing args: $missingArgsCount");
    } else {
      print("ERROR: 'functions' field is not a List or is missing");
    }

    // Filter out api/auth HttpAction functions before parsing
    final Map<String, dynamic> modifiedJsonData = Map.from(jsonData);
    if (jsonData['functions'] is List) {
      final functions = jsonData['functions'] as List;
      final filteredFunctions = <dynamic>[];

      for (final function in functions) {
        if (function is Map<String, dynamic>) {
          final functionType = function['functionType'] as String?;
          final path = function['path'] as String?;

          // Filter out api/auth HttpAction functions specifically, and also .well-known
          if (functionType == 'HttpAction' &&
              path != null &&
              (path.startsWith('/api/auth') ||
                  path.startsWith('/.well-known'))) {
            print('Filtering out HttpAction: $path');
            continue;
          }

          filteredFunctions.add(function);
        } else {
          filteredFunctions.add(function);
        }
      }

      modifiedJsonData['functions'] = filteredFunctions;
      print(
        "DEBUG: Filtered ${functions.length - filteredFunctions.length} api/auth HttpAction functions",
      );
    }

    final modifiedContents = jsonEncode(modifiedJsonData);

    print("DEBUG: Attempting FunctionsSpecMapper.fromJson...");
    final FunctionsSpec functionsSpec;
    try {
      functionsSpec = FunctionsSpecMapper.fromJson(modifiedContents);
      print("DEBUG: FunctionsSpecMapper.fromJson succeeded!");
    } catch (e) {
      print("ERROR: FunctionsSpecMapper.fromJson failed: $e");
      print(
        "ERROR: Modified schema content length: ${modifiedContents.length}",
      );
      rethrow;
    }

    final clientBuildContext = ClientBuildContext(
      mappingData: mappingData,
      objectBoxFunctionsData: objectBoxFunctionsData,
      packageName: buildStep.inputId.package,
    );
    await functionsSpec.build(clientBuildContext);
    
    for (final entry in clientBuildContext.outputs.entries) {
      final filePath = path.join(libPath, entry.key);
      final file = File(filePath);

      await file.create(recursive: true);
      await file.writeAsString(entry.value);
    }

    // Post-process: Remove unused imports from all generated files
    print("DEBUG: Removing unused imports from generated files...");
    int totalRemoved = 0;
    for (final entry in clientBuildContext.outputs.entries) {
      final filePath = path.join(libPath, entry.key);
      final file = File(filePath);
      final removedCount = await _removeUnusedImports(file);
      totalRemoved += removedCount;
    }
    print("DEBUG: Removed $totalRemoved unused imports total");

    // Generate a _ignore.dart file to prevent build_runner from ignoring rebuilds
    final assetId = buildStep.inputId.changeExtension("_ignore.dart");
    await buildStep.writeAsString(
      assetId,
      "// Generated by convex_dart_builder ${Random().nextInt(1000000)}",
    );
  }

  @override
  Map<String, List<String>> get buildExtensions => {
    ".json": ["**", "_ignore.dart"],
  };
}

Future<void> wipeDartFiles(Directory dir) async {
  await for (final file in dir.list(recursive: true)) {
    if (file is File && file.path.endsWith(".dart")) {
      await file.delete();
    }
  }
}

/// Removes unused imports from a Dart file.
/// Returns the number of imports removed.
Future<int> _removeUnusedImports(File file) async {
  final content = await file.readAsString();
  final lines = content.split('\n');

  // Separate imports from the rest of the code
  final importLines = <_ImportInfo>[];
  final otherLines = <String>[];
  final ignoreLines = <String>[]; // file-level ignore comments

  for (final line in lines) {
    final trimmed = line.trim();
    if (trimmed.startsWith('import ')) {
      final importInfo = _parseImport(line);
      if (importInfo != null) {
        importLines.add(importInfo);
      } else {
        // Keep unparseable imports
        otherLines.add(line);
      }
    } else if (trimmed.startsWith('// ignore_for_file:')) {
      ignoreLines.add(line);
    } else {
      otherLines.add(line);
    }
  }

  if (importLines.isEmpty) {
    return 0;
  }

  // Join other lines to check for usage
  final codeContent = otherLines.join('\n');

  // Filter to only keep used imports
  final usedImports = <_ImportInfo>[];
  int removedCount = 0;

  for (final import in importLines) {
    if (_isImportUsed(import, codeContent)) {
      usedImports.add(import);
    } else {
      removedCount++;
    }
  }

  if (removedCount == 0) {
    return 0;
  }

  // Rebuild the file content
  final buffer = StringBuffer();

  // Write ignore comments first
  for (final ignoreLine in ignoreLines) {
    buffer.writeln(ignoreLine);
  }

  // Write remaining imports
  for (final import in usedImports) {
    buffer.writeln(import.originalLine);
  }

  // Write the rest of the code
  for (final line in otherLines) {
    buffer.writeln(line);
  }

  // Remove trailing newline added by writeln
  var result = buffer.toString();
  if (result.endsWith('\n\n')) {
    result = result.substring(0, result.length - 1);
  }

  await file.writeAsString(result);
  return removedCount;
}

class _ImportInfo {
  final String originalLine;
  final String uri;
  final String? alias; // 'as' alias
  final List<String>? showNames; // 'show' identifiers
  final List<String>? hideNames; // 'hide' identifiers

  _ImportInfo({
    required this.originalLine,
    required this.uri,
    this.alias,
    this.showNames,
    this.hideNames,
  });

  /// Get the identifiers that this import makes available
  List<String> get availableIdentifiers {
    final identifiers = <String>[];

    // If there's an alias, that's what's used to access the import
    if (alias != null) {
      identifiers.add(alias!);
    }

    // If there's a show clause, those are the only identifiers exposed
    if (showNames != null && showNames!.isNotEmpty) {
      identifiers.addAll(showNames!);
    }

    // Extract potential identifiers from the URI
    // e.g., 'package:foo/bar.dart' -> 'bar' might be used as prefix
    // e.g., '../schema.dart' -> types defined in schema.dart
    final uriMatch = RegExp(r'/([^/]+)\.dart').firstMatch(uri);
    if (uriMatch != null) {
      final filename = uriMatch.group(1)!;
      // Convert snake_case to potential class names
      final parts = filename.split('_');
      final className = parts.map((p) => p.isEmpty ? '' : '${p[0].toUpperCase()}${p.substring(1)}').join('');
      if (className.isNotEmpty) {
        identifiers.add(className);
      }
    }

    return identifiers;
  }
}

_ImportInfo? _parseImport(String line) {
  final trimmed = line.trim();

  // Match import statement: import "uri" [as alias] [show/hide names];
  final importRegex = RegExp(
    r'''import\s+["']([^"']+)["']'''
    r'''(?:\s+as\s+(\w+))?'''
    r'''(?:\s+show\s+([^;]+))?'''
    r'''(?:\s+hide\s+([^;]+))?'''
    r'''\s*;'''
  );

  final match = importRegex.firstMatch(trimmed);
  if (match == null) {
    return null;
  }

  final uri = match.group(1)!;
  final alias = match.group(2);
  final showPart = match.group(3);
  final hidePart = match.group(4);

  List<String>? showNames;
  List<String>? hideNames;

  if (showPart != null) {
    showNames = showPart.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
  }
  if (hidePart != null) {
    hideNames = hidePart.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
  }

  return _ImportInfo(
    originalLine: line,
    uri: uri,
    alias: alias,
    showNames: showNames,
    hideNames: hideNames,
  );
}

bool _isImportUsed(_ImportInfo import, String codeContent) {
  // Always keep dart:core and some essential imports
  if (import.uri.startsWith('dart:core')) {
    return true;
  }

  // If there's an alias, check if the alias is used
  if (import.alias != null) {
    // Check for alias usage like: alias.Something or alias.method()
    final aliasPattern = RegExp(r'\b' + RegExp.escape(import.alias!) + r'\.');
    if (aliasPattern.hasMatch(codeContent)) {
      return true;
    }
    // If alias exists but not used, the import is unused
    return false;
  }

  // If there's a show clause, check if any of the shown names are used
  if (import.showNames != null && import.showNames!.isNotEmpty) {
    for (final name in import.showNames!) {
      // Check for word boundary usage of the identifier
      final namePattern = RegExp(r'\b' + RegExp.escape(name) + r'\b');
      if (namePattern.hasMatch(codeContent)) {
        return true;
      }
    }
    // None of the shown names are used
    return false;
  }

  // For imports without alias or show, we need to check common patterns
  // Check for common types/functions that might come from this import

  // Extract potential identifiers from the URI
  final uriParts = import.uri.split('/');
  final lastPart = uriParts.last.replaceAll('.dart', '');

  // Common patterns based on import URI
  if (import.uri.contains('convex_dart')) {
    // Check for common convex_dart types - includes both main and generated code types
    final convexTypes = [
      // Core types
      'Optional', 'Defined', 'Undefined', 'IList', 'IMap', 'Union', 'ConvexClient', 'toIList',
      // Literal and ID types
      'Literal', 'TableId', 'ConvexId',
      // Generated code types from convex_dart_for_generated_code
      'MutationOperation', 'QueryOperation', 'ActionOperation',
      'BTreeMapStringValue', 'DartValue',
      'hashmapToBtreemap', 'decodeValue', 'encodeValue',
      // Union types
      'Union2', 'Union3', 'Union4', 'Union5', 'Union6', 'Union7', 'Union8', 'Union9',
    ];
    for (final type in convexTypes) {
      if (RegExp(r'\b' + type + r'\b').hasMatch(codeContent)) {
        return true;
      }
    }
    // If none of the types are used, the import is unused
    return false;
  }

  if (import.uri.contains('objectbox')) {
    // Check for ObjectBox annotations
    final objectBoxTypes = ['@Entity', '@Id', '@Embedded', 'Entity', 'Id', 'Embedded', 'Store', 'Box'];
    for (final type in objectBoxTypes) {
      if (codeContent.contains(type)) {
        return true;
      }
    }
    // If no ObjectBox types are used, the import is unused
    return false;
  }

  if (import.uri.contains('dart:convert')) {
    // Check for jsonEncode/jsonDecode
    if (codeContent.contains('jsonEncode') || codeContent.contains('jsonDecode') ||
        codeContent.contains('JsonEncoder') || codeContent.contains('JsonDecoder') ||
        codeContent.contains('json.encode') || codeContent.contains('json.decode')) {
      return true;
    }
    // If no convert functions are used, the import is unused
    return false;
  }

  if (import.uri.contains('dart:typed_data')) {
    // Check for typed data types
    final typedDataTypes = ['Uint8List', 'Int8List', 'Uint16List', 'ByteData', 'ByteBuffer', 'Float32List', 'Float64List'];
    for (final type in typedDataTypes) {
      if (RegExp(r'\b' + type + r'\b').hasMatch(codeContent)) {
        return true;
      }
    }
    // If no typed data types are used, the import is unused
    return false;
  }

  // Check for schema.dart types (table IDs)
  if (import.uri.contains('schema.dart')) {
    // Check for specific ID types (not just any word ending in Id)
    // Schema IDs are PascalCase ending in Id like: UserId, NotificationsId, SmsRecordsId, etc.
    final idPattern = RegExp(r'\b[A-Z][a-zA-Z]+Id\b');
    final matches = idPattern.allMatches(codeContent);
    // Filter out common false positives like 'nodeId', 'clientId' which are not schema types
    final schemaIdCandidates = matches.where((m) {
      final match = m.group(0)!;
      // Schema IDs typically have format like: UserId, NotificationsId, SmsRecordsId
      // Exclude common field names that end in Id
      final excludePatterns = ['Id(', 'nodeId', 'clientId', 'sessionId', 'requestId', 'transactionId'];
      for (final exclude in excludePatterns) {
        if (match.toLowerCase() == exclude.toLowerCase()) return false;
      }
      return true;
    });
    if (schemaIdCandidates.isNotEmpty) {
      return true;
    }
    // If no schema IDs are used, the import is unused
    return false;
  }

  // Check for literals.dart types
  if (import.uri.contains('literals.dart')) {
    // Check for literal types that start with $
    final literalPattern = RegExp(r'\$\w+Literal');
    if (literalPattern.hasMatch(codeContent)) {
      return true;
    }
    // If no literal types are used, the import is unused
    return false;
  }

  // Check for index.dart (barrel exports) - these are typically used
  if (import.uri.endsWith('index.dart')) {
    // Barrel exports usually re-export many classes, keep them
    return true;
  }

  // Check if the import path suggests a model/class name
  // e.g., '../models/json/my_model.dart' -> MyModel
  final snakeCaseName = lastPart;
  final pascalCaseName = snakeCaseName
      .split('_')
      .map((part) => part.isEmpty ? '' : '${part[0].toUpperCase()}${part.substring(1)}')
      .join('');

  if (pascalCaseName.isNotEmpty) {
    final classPattern = RegExp(r'\b' + RegExp.escape(pascalCaseName) + r'\b');
    if (classPattern.hasMatch(codeContent)) {
      return true;
    }
    // Also check for Doc suffix (common pattern)
    final docPattern = RegExp(r'\b' + RegExp.escape(pascalCaseName) + r'Doc\b');
    if (docPattern.hasMatch(codeContent)) {
      return true;
    }
  }

  // If we can't determine usage, keep the import to be safe
  // But for known generated imports that follow patterns, we can be more aggressive
  if (import.uri.contains('../') || import.uri.contains('./')) {
    // Relative imports in generated code - check more carefully

    // For box files importing schema/literals that aren't used
    if (import.uri.endsWith('schema.dart') || import.uri.endsWith('literals.dart')) {
      // Already checked above, if we're here it means they're not used
      return false;
    }
  }

  // Default: keep the import
  return true;
}
