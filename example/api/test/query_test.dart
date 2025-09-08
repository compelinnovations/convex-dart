import 'dart:convert';
import 'package:api/client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';
import 'package:api/src/functions/tasks/query1.dart';
import 'package:api/src/functions/tasks/query2.dart';
import 'package:api/src/functions/tasks/query3.dart';
import 'package:api/src/functions/tasks/query4.dart';
import 'package:api/src/functions/tasks/query5.dart';
import 'package:api/src/functions/tasks/query6.dart';
import 'package:api/src/functions/tasks/query7.dart';
import 'package:api/src/functions/tasks/query9.dart';
import 'package:api/src/functions/tasks/query10.dart';
import 'package:api/src/functions/tasks/query11.dart';
import 'package:api/src/functions/tasks/query13.dart';
import 'package:api/src/functions/tasks/query14.dart';
import 'package:api/src/functions/tasks/query15.dart';
import 'package:api/src/functions/tasks/query16.dart';
import 'package:api/src/functions/tasks/query17.dart';
import 'package:api/src/functions/tasks/query18.dart';
import 'package:api/src/functions/tasks/query19.dart';
import 'package:api/src/functions/tasks/query20.dart';
import 'package:api/src/functions/tasks/query21.dart';
import 'package:api/src/functions/tasks/query22.dart';
import 'package:api/src/functions/tasks/query24.dart';
import 'package:api/src/functions/tasks/query25.dart';
import 'package:api/src/functions/tasks/query26.dart';
import 'package:api/src/functions/tasks/query27.dart';
import 'package:api/src/functions/tasks/query28.dart';
import 'package:api/src/functions/tasks/query29.dart';
import 'package:api/src/functions/tasks/query30.dart';
import 'package:api/src/functions/tasks/query31.dart';
import 'package:api/src/functions/tasks/query32.dart';
import 'package:api/src/functions/tasks/query33.dart';
import 'package:api/src/functions/tasks/query35.dart';
import 'package:api/src/functions/tasks/query36.dart';
import 'package:api/src/functions/tasks/query37.dart';
import 'package:api/src/functions/tasks/query38.dart';
import 'package:api/src/functions/tasks/query39.dart';
import 'package:api/src/functions/tasks/query40.dart';
import 'package:api/src/functions/tasks/query41.dart';
import 'package:api/src/functions/tasks/query42.dart';
import 'package:api/src/functions/tasks/query43.dart';
import 'package:api/src/functions/tasks/query44.dart';
import 'package:api/src/functions/tasks/query45.dart';
import 'package:api/src/functions/tasks/query58.dart';
import 'package:api/src/functions/tasks/query59.dart';
import 'package:api/src/functions/tasks/query60.dart';
import 'package:api/src/functions/tasks/query61.dart';
import 'package:api/src/functions/tasks/query62.dart';
import 'package:api/src/functions/tasks/query63.dart';
import 'package:api/src/functions/tasks/query64.dart';
import 'package:api/src/functions/tasks/query65.dart';
import 'package:api/src/functions/tasks/query66.dart';
import 'package:api/src/functions/tasks/query67.dart';
import 'package:api/src/functions/tasks/query69.dart';
import 'package:api/src/functions/tasks/query70.dart';
import 'package:api/src/functions/tasks/query71.dart';
import 'package:api/src/functions/tasks/query72.dart';
import 'package:api/src/functions/tasks/query73.dart';
import 'package:api/src/functions/tasks/query74.dart';
import 'package:api/src/functions/tasks/query75.dart';
import 'package:api/src/functions/tasks/query76.dart';
import 'package:api/src/functions/tasks/query77.dart';
import 'package:api/src/functions/tasks/query78.dart';
import 'package:api/src/functions/tasks/query79.dart';
import 'package:api/src/functions/tasks/query81.dart';
import 'package:api/src/functions/tasks/query82.dart';
import 'package:api/src/functions/tasks/query83.dart';
import 'package:api/src/functions/tasks/query84.dart';
import 'package:api/src/functions/tasks/query85.dart';
import 'package:api/src/functions/tasks/query86.dart';
import 'package:api/src/functions/tasks/query87.dart';
import 'package:api/src/functions/tasks/query88.dart';
import 'package:api/src/functions/tasks/query89.dart';
import 'package:api/src/functions/tasks/query90.dart';
import 'package:api/src/functions/tasks/query92.dart';
import 'package:api/src/functions/tasks/query93.dart';
import 'package:api/src/functions/tasks/query94.dart';
import 'package:api/src/functions/tasks/query95.dart';
import 'package:api/src/functions/tasks/query96.dart';
import 'package:api/src/functions/tasks/query97.dart';
import 'package:api/src/functions/tasks/query98.dart';
import 'package:api/src/functions/tasks/query99.dart';
import 'package:api/src/functions/tasks/query100.dart';
import 'package:api/src/functions/tasks/query101.dart';
import 'package:api/src/functions/tasks/query102.dart';
import 'package:api/src/functions/tasks/query103.dart';
import 'package:api/src/functions/tasks/query104.dart';
import 'package:api/src/functions/tasks/query105.dart';
import 'package:api/src/functions/tasks/query106.dart';
import 'package:api/src/functions/tasks/query107.dart';
import 'package:api/src/functions/tasks/query108.dart';
import 'package:api/src/functions/tasks/query109.dart';
import 'package:api/src/functions/tasks/query110.dart';
import 'package:api/src/functions/tasks/query111.dart';
import 'package:api/src/functions/tasks/query112.dart';
import 'package:api/src/functions/tasks/query113.dart';
import 'package:api/src/functions/tasks/query114.dart';
import 'package:api/src/functions/tasks/query115.dart';
import 'package:api/src/functions/tasks/query116.dart';
import 'package:api/src/functions/tasks/query117.dart';
import 'package:api/src/functions/tasks/query118.dart';
import 'package:api/src/functions/tasks/query119.dart';
import 'package:api/src/functions/tasks/query120.dart';
import 'package:api/src/functions/tasks/query121.dart';
import 'package:api/src/functions/tasks/query122.dart';
import 'package:api/src/functions/tasks/query123.dart';
import 'package:api/src/functions/tasks/query124.dart';
import 'package:api/src/functions/tasks/query125.dart';
import 'package:api/src/functions/tasks/query126.dart';
import 'package:api/src/functions/tasks/query127.dart';
import 'package:api/src/functions/tasks/query128.dart';
import 'package:api/src/functions/tasks/query129.dart';
import 'package:api/src/functions/tasks/query130.dart';
import 'package:api/src/functions/tasks/query131.dart';

final eq = DeepCollectionEquality.unordered();

void main() {
  setUpAll(() async {
    await ConvexClient.init();
  });
  test('query1', () async {
    final sourceText = r'{"i":"in"}';
    final sourceMap = json.decode(sourceText);
    final args = Query1ArgsMapper.fromMap(sourceMap);
    final result = await query1.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query2', () async {
    final sourceText = r'{"i":0.9526839195937806}';
    final sourceMap = json.decode(sourceText);
    final args = Query2ArgsMapper.fromMap(sourceMap);
    final result = await query2.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query3', () async {
    final sourceText = r'{"i":false}';
    final sourceMap = json.decode(sourceText);
    final args = Query3ArgsMapper.fromMap(sourceMap);
    final result = await query3.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query4', () async {
    final sourceText = r'{"i":763474}';
    final sourceMap = json.decode(sourceText);
    final args = Query4ArgsMapper.fromMap(sourceMap);
    final result = await query4.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query5', () async {
    final sourceText = r'{"i":[141,111,158,62,60,107,173,104,62,234]}';
    final sourceMap = json.decode(sourceText);
    final args = Query5ArgsMapper.fromMap(sourceMap);
    final result = await query5.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query6', () async {
    final sourceText = r'{"i":"j579e7k3cjcwj3jmzf9be7rva97q5w2c"}';
    final sourceMap = json.decode(sourceText);
    final args = Query6ArgsMapper.fromMap(sourceMap);
    final result = await query6.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query7', () async {
    final sourceText = r'{"i":0.6696055236811763}';
    final sourceMap = json.decode(sourceText);
    final args = Query7ArgsMapper.fromMap(sourceMap);
    final result = await query7.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query9', () async {
    final sourceText = r'{"i":"hi"}';
    final sourceMap = json.decode(sourceText);
    final args = Query9ArgsMapper.fromMap(sourceMap);
    final result = await query9.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query10', () async {
    final sourceText = r'{"i":1}';
    final sourceMap = json.decode(sourceText);
    final args = Query10ArgsMapper.fromMap(sourceMap);
    final result = await query10.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query11', () async {
    final sourceText = r'{"i":true}';
    final sourceMap = json.decode(sourceText);
    final args = Query11ArgsMapper.fromMap(sourceMap);
    final result = await query11.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query13', () async {
    final sourceText = r'{}';
    final sourceMap = json.decode(sourceText);
    final args = Query13ArgsMapper.fromMap(sourceMap);
    final result = await query13.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query14', () async {
    final sourceText = r'{}';
    final sourceMap = json.decode(sourceText);
    final args = Query14ArgsMapper.fromMap(sourceMap);
    final result = await query14.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query15', () async {
    final sourceText = r'{"i":false}';
    final sourceMap = json.decode(sourceText);
    final args = Query15ArgsMapper.fromMap(sourceMap);
    final result = await query15.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query16', () async {
    final sourceText = r'{"i":744113}';
    final sourceMap = json.decode(sourceText);
    final args = Query16ArgsMapper.fromMap(sourceMap);
    final result = await query16.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query17', () async {
    final sourceText = r'{"i":[74,51,41,16,252,80,82,154,243,6]}';
    final sourceMap = json.decode(sourceText);
    final args = Query17ArgsMapper.fromMap(sourceMap);
    final result = await query17.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query18', () async {
    final sourceText = r'{}';
    final sourceMap = json.decode(sourceText);
    final args = Query18ArgsMapper.fromMap(sourceMap);
    final result = await query18.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query19', () async {
    final sourceText = r'{}';
    final sourceMap = json.decode(sourceText);
    final args = Query19ArgsMapper.fromMap(sourceMap);
    final result = await query19.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query20', () async {
    final sourceText = r'{"i":"hi"}';
    final sourceMap = json.decode(sourceText);
    final args = Query20ArgsMapper.fromMap(sourceMap);
    final result = await query20.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query21', () async {
    final sourceText = r'{"i":1}';
    final sourceMap = json.decode(sourceText);
    final args = Query21ArgsMapper.fromMap(sourceMap);
    final result = await query21.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query22', () async {
    final sourceText = r'{"i":true}';
    final sourceMap = json.decode(sourceText);
    final args = Query22ArgsMapper.fromMap(sourceMap);
    final result = await query22.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query24', () async {
    final sourceText = r'{"i":"duis"}';
    final sourceMap = json.decode(sourceText);
    final args = Query24ArgsMapper.fromMap(sourceMap);
    final result = await query24.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query25', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query25ArgsMapper.fromMap(sourceMap);
    final result = await query25.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query26', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query26ArgsMapper.fromMap(sourceMap);
    final result = await query26.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query27', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query27ArgsMapper.fromMap(sourceMap);
    final result = await query27.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query28', () async {
    final sourceText = r'{"i":[14,249,144,41,111,191,88,162,249,253]}';
    final sourceMap = json.decode(sourceText);
    final args = Query28ArgsMapper.fromMap(sourceMap);
    final result = await query28.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query29', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query29ArgsMapper.fromMap(sourceMap);
    final result = await query29.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query30', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query30ArgsMapper.fromMap(sourceMap);
    final result = await query30.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query31', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query31ArgsMapper.fromMap(sourceMap);
    final result = await query31.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query32', () async {
    final sourceText = r'{"i":1}';
    final sourceMap = json.decode(sourceText);
    final args = Query32ArgsMapper.fromMap(sourceMap);
    final result = await query32.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query33', () async {
    final sourceText = r'{"i":true}';
    final sourceMap = json.decode(sourceText);
    final args = Query33ArgsMapper.fromMap(sourceMap);
    final result = await query33.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query35', () async {
    final sourceText = r'{"i":["quam","porta","nec"]}';
    final sourceMap = json.decode(sourceText);
    final args = Query35ArgsMapper.fromMap(sourceMap);
    final result = await query35.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query36', () async {
    final sourceText = r'{"i":[]}';
    final sourceMap = json.decode(sourceText);
    final args = Query36ArgsMapper.fromMap(sourceMap);
    final result = await query36.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query37', () async {
    final sourceText = r'{"i":[true,true,false,false,false]}';
    final sourceMap = json.decode(sourceText);
    final args = Query37ArgsMapper.fromMap(sourceMap);
    final result = await query37.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query38', () async {
    final sourceText = r'{"i":[557173,606478,114173]}';
    final sourceMap = json.decode(sourceText);
    final args = Query38ArgsMapper.fromMap(sourceMap);
    final result = await query38.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query39', () async {
    final sourceText =
        r'{"i":[[78,250,254,248,134,44,133,102,217,53],[183,219,165,183,135,195,72,217,40,153]]}';
    final sourceMap = json.decode(sourceText);
    final args = Query39ArgsMapper.fromMap(sourceMap);
    final result = await query39.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query40', () async {
    final sourceText =
        r'{"i":["j579e7k3cjcwj3jmzf9be7rva97q5w2c","j579e7k3cjcwj3jmzf9be7rva97q5w2c"]}';
    final sourceMap = json.decode(sourceText);
    final args = Query40ArgsMapper.fromMap(sourceMap);
    final result = await query40.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query41', () async {
    final sourceText =
        r'{"i":["feugiat",787330,true,"aliquam","vulputate",532231]}';
    final sourceMap = json.decode(sourceText);
    final args = Query41ArgsMapper.fromMap(sourceMap);
    final result = await query41.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query42', () async {
    final sourceText = r'{"i":[null,null,null,null,null,null,null,null,null]}';
    final sourceMap = json.decode(sourceText);
    final args = Query42ArgsMapper.fromMap(sourceMap);
    final result = await query42.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query43', () async {
    final sourceText = r'{"i":["hi","hi","hi","hi","hi","hi"]}';
    final sourceMap = json.decode(sourceText);
    final args = Query43ArgsMapper.fromMap(sourceMap);
    final result = await query43.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query44', () async {
    final sourceText = r'{"i":[1,1,1]}';
    final sourceMap = json.decode(sourceText);
    final args = Query44ArgsMapper.fromMap(sourceMap);
    final result = await query44.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query45', () async {
    final sourceText = r'{"i":[true]}';
    final sourceMap = json.decode(sourceText);
    final args = Query45ArgsMapper.fromMap(sourceMap);
    final result = await query45.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query58', () async {
    final sourceText = r'{"i":["auctor","cras"]}';
    final sourceMap = json.decode(sourceText);
    final args = Query58ArgsMapper.fromMap(sourceMap);
    final result = await query58.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query59', () async {
    final sourceText =
        r'{"i":[0.6385937568380421,0.031674466581416705,0.9469990634132004,0.579137165741792,0.11078317996125375,0.9733705168485769,0.24436249181646763]}';
    final sourceMap = json.decode(sourceText);
    final args = Query59ArgsMapper.fromMap(sourceMap);
    final result = await query59.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query60', () async {
    final sourceText = r'{"i":[false,false,null,true,false]}';
    final sourceMap = json.decode(sourceText);
    final args = Query60ArgsMapper.fromMap(sourceMap);
    final result = await query60.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query61', () async {
    final sourceText = r'{"i":[null,null,null,395454,175122,694580,968840]}';
    final sourceMap = json.decode(sourceText);
    final args = Query61ArgsMapper.fromMap(sourceMap);
    final result = await query61.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query62', () async {
    final sourceText =
        r'{"i":[null,[2,77,200,186,43,104,154,135,7,228],[54,165,91,223,102,18,0,137,195,120],[248,22,87,36,241,234,195,94,92,221],null,null]}';
    final sourceMap = json.decode(sourceText);
    final args = Query62ArgsMapper.fromMap(sourceMap);
    final result = await query62.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query63', () async {
    final sourceText =
        r'{"i":[null,null,null,null,null,null,null,"j579e7k3cjcwj3jmzf9be7rva97q5w2c","j579e7k3cjcwj3jmzf9be7rva97q5w2c"]}';
    final sourceMap = json.decode(sourceText);
    final args = Query63ArgsMapper.fromMap(sourceMap);
    final result = await query63.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query64', () async {
    final sourceText = r'{"i":[false,0.9802709349604393,null,true,"maecenas"]}';
    final sourceMap = json.decode(sourceText);
    final args = Query64ArgsMapper.fromMap(sourceMap);
    final result = await query64.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query65', () async {
    final sourceText = r'{"i":[]}';
    final sourceMap = json.decode(sourceText);
    final args = Query65ArgsMapper.fromMap(sourceMap);
    final result = await query65.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query66', () async {
    final sourceText = r'{"i":[1,null,1,1,null]}';
    final sourceMap = json.decode(sourceText);
    final args = Query66ArgsMapper.fromMap(sourceMap);
    final result = await query66.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query67', () async {
    final sourceText = r'{"i":[]}';
    final sourceMap = json.decode(sourceText);
    final args = Query67ArgsMapper.fromMap(sourceMap);
    final result = await query67.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query69', () async {
    final sourceText = r'{"i":{"ante":"accumsan","tristique":"aenean"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query69ArgsMapper.fromMap(sourceMap);
    final result = await query69.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query70', () async {
    final sourceText =
        r'{"i":{"lorem":0.21951360982197488,"sem":0.2965433222553532,"tincidunt":0.14992058337796432,"leo":0.9463262111967892,"placerat":0.182517745981138}}';
    final sourceMap = json.decode(sourceText);
    final args = Query70ArgsMapper.fromMap(sourceMap);
    final result = await query70.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query71', () async {
    final sourceText =
        r'{"i":{"praesent":false,"egestas":true,"ante":false,"erat":true,"mattis":true,"sit":false,"scelerisque":false,"id":true,"proin":true}}';
    final sourceMap = json.decode(sourceText);
    final args = Query71ArgsMapper.fromMap(sourceMap);
    final result = await query71.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query72', () async {
    final sourceText =
        r'{"i":{"feugiat":893712,"justo":814130,"massa":619094,"lacus":33319,"donec":118629,"congue":459191,"est":617362}}';
    final sourceMap = json.decode(sourceText);
    final args = Query72ArgsMapper.fromMap(sourceMap);
    final result = await query72.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query73', () async {
    final sourceText =
        r'{"i":{"sollicitudin":[3,36,58,15,37,153,199,86,173,39],"facilisi":[0,74,5,74,236,42,49,157,198,2]}}';
    final sourceMap = json.decode(sourceText);
    final args = Query73ArgsMapper.fromMap(sourceMap);
    final result = await query73.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query74', () async {
    final sourceText =
        r'{"i":{"velit":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","dictum":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","turpis":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","laoreet":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","eget":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","lacinia":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","ultrices":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","pharetra":"j579e7k3cjcwj3jmzf9be7rva97q5w2c"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query74ArgsMapper.fromMap(sourceMap);
    final result = await query74.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query75', () async {
    final sourceText = r'{"i":{"mi":0.04107981292220342,"mauris":843208}}';
    final sourceMap = json.decode(sourceText);
    final args = Query75ArgsMapper.fromMap(sourceMap);
    final result = await query75.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query76', () async {
    final sourceText = r'{"i":{"vitae":null,"fames":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query76ArgsMapper.fromMap(sourceMap);
    final result = await query76.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query77', () async {
    final sourceText =
        r'{"i":{"nam":"hi","sit":"hi","platea":"hi","integer":"hi","venenatis":"hi","pharetra":"hi","sapien":"hi"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query77ArgsMapper.fromMap(sourceMap);
    final result = await query77.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query78', () async {
    final sourceText = r'{"i":{"dolor":1,"nam":1,"hendrerit":1,"praesent":1}}';
    final sourceMap = json.decode(sourceText);
    final args = Query78ArgsMapper.fromMap(sourceMap);
    final result = await query78.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query79', () async {
    final sourceText =
        r'{"i":{"sodales":true,"libero":true,"luctus":true,"congue":true,"dapibus":true,"felis":true,"ipsum":true}}';
    final sourceMap = json.decode(sourceText);
    final args = Query79ArgsMapper.fromMap(sourceMap);
    final result = await query79.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query81', () async {
    final sourceText =
        r'{"i":{"nam":null,"tellus":"sit","suspendisse":"risus","magnis":null,"sociis":"aliquet","pharetra":"tristique","facilisi":"dictum"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query81ArgsMapper.fromMap(sourceMap);
    final result = await query81.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query82', () async {
    final sourceText = r'{"i":{}}';
    final sourceMap = json.decode(sourceText);
    final args = Query82ArgsMapper.fromMap(sourceMap);
    final result = await query82.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query83', () async {
    final sourceText = r'{"i":{"mattis":null,"ultricies":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query83ArgsMapper.fromMap(sourceMap);
    final result = await query83.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query84', () async {
    final sourceText =
        r'{"i":{"eget":636831,"interdum":113673,"ultrices":null,"rhoncus":null,"sagittis":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query84ArgsMapper.fromMap(sourceMap);
    final result = await query84.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query85', () async {
    final sourceText =
        r'{"i":{"placerat":[159,230,133,206,88,232,175,176,158,204],"hendrerit":null,"sodales":[220,237,1,87,38,122,175,228,168,187],"fusce":null,"ornare":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query85ArgsMapper.fromMap(sourceMap);
    final result = await query85.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query86', () async {
    final sourceText =
        r'{"i":{"duis":null,"leo":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","sociis":"j579e7k3cjcwj3jmzf9be7rva97q5w2c"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query86ArgsMapper.fromMap(sourceMap);
    final result = await query86.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query87', () async {
    final sourceText = r'{"i":{"feugiat":null,"accumsan":null,"dui":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query87ArgsMapper.fromMap(sourceMap);
    final result = await query87.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query88', () async {
    final sourceText = r'{"i":{"porta":"hi","mollis":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query88ArgsMapper.fromMap(sourceMap);
    final result = await query88.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query89', () async {
    final sourceText =
        r'{"i":{"commodo":null,"porta":null,"consectetur":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query89ArgsMapper.fromMap(sourceMap);
    final result = await query89.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query90', () async {
    final sourceText =
        r'{"i":{"bibendum":null,"faucibus":true,"nisi":null,"neque":true,"vivamus":null,"dictum":true,"nullam":true,"porttitor":null,"ridiculus":null}}';
    final sourceMap = json.decode(sourceText);
    final args = Query90ArgsMapper.fromMap(sourceMap);
    final result = await query90.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query92', () async {
    final sourceText = r'{"i":"mauris"}';
    final sourceMap = json.decode(sourceText);
    final args = Query92ArgsMapper.fromMap(sourceMap);
    final result = await query92.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query93', () async {
    final sourceText = r'{"i":0.4685106761357021}';
    final sourceMap = json.decode(sourceText);
    final args = Query93ArgsMapper.fromMap(sourceMap);
    final result = await query93.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query94', () async {
    final sourceText = r'{"i":true}';
    final sourceMap = json.decode(sourceText);
    final args = Query94ArgsMapper.fromMap(sourceMap);
    final result = await query94.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query95', () async {
    final sourceText = r'{"i":0.40117623942306113}';
    final sourceMap = json.decode(sourceText);
    final args = Query95ArgsMapper.fromMap(sourceMap);
    final result = await query95.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query96', () async {
    final sourceText = r'{"i":"egestas"}';
    final sourceMap = json.decode(sourceText);
    final args = Query96ArgsMapper.fromMap(sourceMap);
    final result = await query96.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query97', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query97ArgsMapper.fromMap(sourceMap);
    final result = await query97.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query98', () async {
    final sourceText = r'{"i":[91,166,105,208,224,155,92,17,4,74]}';
    final sourceMap = json.decode(sourceText);
    final args = Query98ArgsMapper.fromMap(sourceMap);
    final result = await query98.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query99', () async {
    final sourceText = r'{"i":"accumsan"}';
    final sourceMap = json.decode(sourceText);
    final args = Query99ArgsMapper.fromMap(sourceMap);
    final result = await query99.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query100', () async {
    final sourceText = r'{"i":"yes"}';
    final sourceMap = json.decode(sourceText);
    final args = Query100ArgsMapper.fromMap(sourceMap);
    final result = await query100.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query101', () async {
    final sourceText = r'{"i":1}';
    final sourceMap = json.decode(sourceText);
    final args = Query101ArgsMapper.fromMap(sourceMap);
    final result = await query101.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query102', () async {
    final sourceText = r'{"i":"user"}';
    final sourceMap = json.decode(sourceText);
    final args = Query102ArgsMapper.fromMap(sourceMap);
    final result = await query102.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query103', () async {
    final sourceText = r'{"i":411434}';
    final sourceMap = json.decode(sourceText);
    final args = Query103ArgsMapper.fromMap(sourceMap);
    final result = await query103.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query104', () async {
    final sourceText = r'{"i":"quam"}';
    final sourceMap = json.decode(sourceText);
    final args = Query104ArgsMapper.fromMap(sourceMap);
    final result = await query104.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query105', () async {
    final sourceText = r'{"i":null}';
    final sourceMap = json.decode(sourceText);
    final args = Query105ArgsMapper.fromMap(sourceMap);
    final result = await query105.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query106', () async {
    final sourceText = r'{"i":false}';
    final sourceMap = json.decode(sourceText);
    final args = Query106ArgsMapper.fromMap(sourceMap);
    final result = await query106.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query107', () async {
    final sourceText = r'{"i":435855}';
    final sourceMap = json.decode(sourceText);
    final args = Query107ArgsMapper.fromMap(sourceMap);
    final result = await query107.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query108', () async {
    final sourceText = r'{"i":"velit"}';
    final sourceMap = json.decode(sourceText);
    final args = Query108ArgsMapper.fromMap(sourceMap);
    final result = await query108.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query109', () async {
    final sourceText = r'{"i":0.6138309517221476}';
    final sourceMap = json.decode(sourceText);
    final args = Query109ArgsMapper.fromMap(sourceMap);
    final result = await query109.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query110', () async {
    final sourceText = r'{"i":true}';
    final sourceMap = json.decode(sourceText);
    final args = Query110ArgsMapper.fromMap(sourceMap);
    final result = await query110.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query111', () async {
    final sourceText = r'{"i":{"age":0.47741123995740853,"name":"in"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query111ArgsMapper.fromMap(sourceMap);
    final result = await query111.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query112', () async {
    final sourceText =
        r'{"i":{"completed":true,"id":"j579e7k3cjcwj3jmzf9be7rva97q5w2c","title":"donec"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query112ArgsMapper.fromMap(sourceMap);
    final result = await query112.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query113', () async {
    final sourceText =
        r'{"i":{"settings":{"notifications":true,"theme":"ligula"},"user":{"email":"tristique","name":"netus"}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query113ArgsMapper.fromMap(sourceMap);
    final result = await query113.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query114', () async {
    final sourceText =
        r'{"i":{"email":"quam","name":"et","phone":"ridiculus"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query114ArgsMapper.fromMap(sourceMap);
    final result = await query114.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query115', () async {
    final sourceText =
        r'{"i":{"categories":["work"],"tags":["neque","purus","natoque","pharetra","habitant","magnis"]}}';
    final sourceMap = json.decode(sourceText);
    final args = Query115ArgsMapper.fromMap(sourceMap);
    final result = await query115.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query116', () async {
    final sourceText =
        r'{"i":{"data":{"type":"number","value":"at"},"metadata":{"quisque":false,"nibh":true,"volutpat":372190,"commodo":0.7423281249320545,"tellus":"leo","nullam":519413,"sociis":false,"cum":"molestie"}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query116ArgsMapper.fromMap(sourceMap);
    final result = await query116.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query117', () async {
    final sourceText =
        r'{"i":{"comments":[{"author":"dolor","text":"aenean","timestamp":0.5599155329045062},{"author":"sagittis","text":"mattis","timestamp":0.7486859856657659},{"author":"eros","text":"porttitor","timestamp":0.4786743185440038},{"author":"platea","text":"lacus","timestamp":0.7175212742999436},{"author":"porttitor","text":"luctus","timestamp":0.31864251048770864},{"author":"montes","text":"id","timestamp":0.8162036646182941},{"author":"felis","text":"suscipit","timestamp":0.762327759169139}],"status":"approved"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query117ArgsMapper.fromMap(sourceMap);
    final result = await query117.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query118', () async {
    final sourceText =
        r'{"i":{"config":{"neque":0.15033084145929543,"cursus":false,"sodales":0.22530057708346873,"sed":"varius"},"fallback":{"enabled":false,"value":"luctus"}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query118ArgsMapper.fromMap(sourceMap);
    final result = await query118.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query119', () async {
    final sourceText =
        r'{"i":{"data":{"content":0.07422409922579842,"type":"number"}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query119ArgsMapper.fromMap(sourceMap);
    final result = await query119.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query120', () async {
    final sourceText =
        r'{"i":{"items":[{"id":"interdum","metadata":{"fusce":true,"odio":0.7872013988914425,"natoque":true,"magnis":928526},"name":"euismod","price":0.19754956398420453,"quantity":0.21467096604583524},{"id":"consectetur","metadata":{"est":0.9299868443272643,"auctor":0.7187258073370114,"magnis":602771,"dictumst":326819,"augue":true,"amet":false},"name":"aenean","price":0.5624607493858161},{"id":"euismod","metadata":{"pretium":"natoque","lectus":443376,"porta":true,"eros":"nisl","netus":0.20860935483362053,"phasellus":true},"name":"eleifend","price":0.68271891110846,"quantity":0.8336052544452501},{"id":"in","metadata":{},"name":"lacinia","price":null},{"id":"blandit","metadata":{"nullam":463001,"praesent":956,"magnis":0.8131942307045237,"consectetur":"et"},"name":"eros","price":0.3896102698194417,"quantity":0.7546767084844295},{"id":"habitasse","metadata":{"netus":false,"morbi":"etiam","scelerisque":"ultrices","nisi":0.52245815410251,"mattis":105595,"feugiat":false,"ornare":0.49324378272977154,"aliquam":100130,"id":0.35937467673869283},"name":"auctor","price":0.4732191199038148}],"total":0.32751704611727794}}';
    final sourceMap = json.decode(sourceText);
    final args = Query120ArgsMapper.fromMap(sourceMap);
    final result = await query120.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query121', () async {
    final sourceText =
        r'{"i":[{"posts":[{"content":"fames","id":"placerat","likes":0.40767959707953305,"tags":["tellus","mauris","non","aenean","lacinia","mattis","fusce","fusce","scelerisque"]},{"content":"cum","id":"sagittis","likes":0.38044579719348914,"tags":["lacus"]},{"content":{"media":["facilisis","ipsum","etiam","laoreet","tempus"],"text":"metus"},"id":"elementum","likes":0.8665831334168288,"tags":["eu","nam","aliquam","nec","morbi","proin","lectus"]},{"content":"luctus","id":"sapien","likes":0.23640269450064333,"tags":[]}],"user":{"preferences":{"sodales":"laoreet","luctus":true,"phasellus":0.17074899790519604},"profile":{"name":"arcu"}}}]}';
    final sourceMap = json.decode(sourceText);
    final args = Query121ArgsMapper.fromMap(sourceMap);
    final result = await query121.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query122', () async {
    final sourceText = r'{"i":{}}';
    final sourceMap = json.decode(sourceText);
    final args = Query122ArgsMapper.fromMap(sourceMap);
    final result = await query122.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query123', () async {
    final sourceText = r'{"i":{"content":"ornare","type":"text"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query123ArgsMapper.fromMap(sourceMap);
    final result = await query123.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query124', () async {
    final sourceText =
        r'{"i":{"api":{"endpoints":{"velit":{"method":"GET","params":{"scelerisque":"sem","netus":0.4869141678108516,"nisi":true,"blandit":false,"lectus":"dignissim","elit":"turpis","duis":"tristique","ultrices":0.7768746976767293},"path":"mauris","response":"porttitor"},"est":{"auth":false,"method":"POST","params":{"neque":"porttitor","mus":"integer","suscipit":false,"nulla":false,"pulvinar":0.7357215649285859,"velit":true,"mauris":"aliquam"},"path":"platea","response":817348},"porta":{"auth":true,"method":"GET","params":{"eros":false,"commodo":0.27996292892064367,"laoreet":false},"path":"maecenas","response":"ridiculus"},"consectetur":{"auth":true,"method":"GET","params":{},"path":"pharetra","response":748536},"vivamus":{"auth":true,"method":"DELETE","params":{"augue":"tincidunt","fermentum":true,"interdum":0.051786186510418,"maecenas":"quis","sem":false,"laoreet":"natoque"},"path":"ante","response":false},"pulvinar":{"auth":false,"method":"POST","params":{"amet":0.6941827545076725,"semper":true,"leo":"rhoncus","blandit":0.7937196609986865,"scelerisque":"mauris","magna":0.9709130222364534,"mauris":"senectus","sapien":"rhoncus"},"path":"eget","response":"mauris"},"id":{"auth":true,"method":"GET","params":{"donec":"libero","ac":true,"enim":"et","pellentesque":"dui"},"path":"auctor","response":"euismod"}},"rateLimit":{"requests":0.8596630216907172,"window":"minute"}},"database":{"tables":{}}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query124ArgsMapper.fromMap(sourceMap);
    final result = await query124.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query125', () async {
    final sourceText =
        r'{"i":{"workflow":{"steps":[{"config":{},"id":"a","name":"arcu","type":"loop"},{"config":{"nisi":0.8911073697158464,"etiam":"at","lectus":490743,"purus":0.3651818205018248,"consectetur":true,"cursus":"ornare"},"id":"ultrices","name":"feugiat","next":"nulla","type":"condition"},{"config":{"elementum":0.4930385996426856,"dignissim":"at","ullamcorper":171104,"sociis":"ipsum","fusce":false,"praesent":0.504533441487944},"id":"venenatis","name":"ullamcorper","type":"loop"},{"config":{"pellentesque":"euismod","orci":0.39469133950453683,"eros":"praesent"},"error":{"handler":"enim","retry":{"count":0.6015044121164611,"delay":0.7658599211228737}},"id":"cum","name":"ultrices","next":"volutpat","type":"loop"},{"config":{"habitasse":false,"venenatis":287349,"convallis":"donec","montes":false,"facilisi":false},"id":"fusce","name":"natoque","next":"etiam","type":"condition"}],"triggers":[{"eventType":"viverra","type":"event"},{"cron":"neque","type":"schedule"},{"cron":"diam","type":"schedule"},{"cron":"bibendum","type":"schedule"},{"type":"webhook","url":"sodales"},{"eventType":"netus","type":"event"},{"type":"webhook","url":"penatibus"},{"eventType":"suspendisse","type":"event"}],"variables":{"elementum":true,"integer":[true],"non":"scelerisque"}}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query125ArgsMapper.fromMap(sourceMap);
    final result = await query125.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query126', () async {
    final sourceText = r'{"i":{"stepType":"condition"}}';
    final sourceMap = json.decode(sourceText);
    final args = Query126ArgsMapper.fromMap(sourceMap);
    final result = await query126.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query127', () async {
    final sourceText =
        r'{"i":{"variables":{"imperdiet":0.3318567843301876,"commodo":false,"eros":false,"nullam":true,"lacinia":"sollicitudin","accumsan":[],"netus":["netus","magna",0.7773850683331649],"iaculis":"hac","convallis":0.8728795863345142}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query127ArgsMapper.fromMap(sourceMap);
    final result = await query127.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query128', () async {
    final sourceText =
        r'{"i":{"triggers":[{"type":"webhook","url":"orci"},{"eventType":"volutpat","type":"event"},{"eventType":"nullam","type":"event"},{"eventType":"ut","type":"event"},{"cron":"scelerisque","type":"schedule"},{"cron":"tincidunt","type":"schedule"}]}}';
    final sourceMap = json.decode(sourceText);
    final args = Query128ArgsMapper.fromMap(sourceMap);
    final result = await query128.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query129', () async {
    final sourceText =
        r'{"i":{"error":{"handler":"congue","retry":{"count":0.894395006247132,"delay":0.8858969330770596}}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query129ArgsMapper.fromMap(sourceMap);
    final result = await query129.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query130', () async {
    final sourceText =
        r'{"i":{"steps":[{"config":{"fusce":34118,"morbi":"eleifend","vel":0.9634311749153255},"id":"quam","name":"consequat","next":"laoreet"},{"config":{"non":0.9031655558096547,"felis":17695,"donec":0.34272083532549447,"ullamcorper":0.442578368673178,"pharetra":true,"vivamus":false,"fermentum":29959},"id":"maecenas","name":"fringilla"},{"config":{"cras":750341,"sem":false,"parturient":57913,"a":0.7724480499849904,"ultricies":false,"senectus":true,"dolor":"non"},"id":"sem","name":"dictum"},{"config":{"et":"hendrerit"},"id":"platea","name":"imperdiet"}]}}';
    final sourceMap = json.decode(sourceText);
    final args = Query130ArgsMapper.fromMap(sourceMap);
    final result = await query130.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });

  test('query131', () async {
    final sourceText =
        r'{"i":{"steps":[{"error":{"handler":"enim","retry":{"count":0.3396862798026412,"delay":0.7205046529143222}},"type":"condition"},{"type":"action"},{"type":"action"},{"error":{"handler":"dolor","retry":{"count":0.4576539684614377,"delay":0.941025062238871}},"type":"loop"},{"error":{"handler":"penatibus","retry":{"count":0.770188509029475,"delay":0.5684859210681834}},"type":"action"},{"error":{"handler":"odio","retry":{"count":0.32891634736011877,"delay":0.6962366058680772}},"type":"loop"},{"type":"condition"},{"type":"action"},{"error":{"handler":"ornare","retry":{"count":0.43961147343279683,"delay":0.1955597902129501}},"type":"action"}],"triggers":[{"type":"webhook","url":"et"}],"variables":{"ac":0.4411143833358647,"maecenas":"mi","velit":["hac",128608,true,false,96571],"blandit":false,"facilisis":0.9441606249215809,"non":[0.6878712191483533,662901,608826,753388,"ridiculus",true],"justo":false,"orci":[false,734436,0.3003572894750297,"eleifend",true,true,0.6377272949227569,false,true],"dictum":[22821,0.6342799831608705,"sodales",0.6336960167023922,false,567127,"arcu","dignissim","nulla"]}}}';
    final sourceMap = json.decode(sourceText);
    final args = Query131ArgsMapper.fromMap(sourceMap);
    final result = await query131.execute(args);
    final targetMap = result.toMap();
    expect(
      eq.equals(sourceMap, targetMap),
      isTrue,
      reason: 'Expected Source: $sourceMap to be equal to Target: $targetMap',
    );
  });
}
