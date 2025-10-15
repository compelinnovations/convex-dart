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
