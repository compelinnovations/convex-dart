import 'dart:convert';
import 'package:api/client.dart';
import 'dart:typed_data';
import 'package:convex_dart/convex_dart.dart';
import 'package:convex_dart/src/rust/dart_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';
import 'package:convex_dart/src/rust/dart_value/conversion.dart';
import 'package:api/src/functions/tasks/query0.dart' as tasksQuery0;
import 'package:api/src/functions/tasks/query1.dart' as tasksQuery1;
import 'package:api/src/functions/tasks/query2.dart' as tasksQuery2;
import 'package:api/src/functions/tasks/query3.dart' as tasksQuery3;
import 'package:api/src/functions/tasks/query4.dart' as tasksQuery4;
import 'package:api/src/functions/tasks/query5.dart' as tasksQuery5;
import 'package:api/src/functions/tasks/query6.dart' as tasksQuery6;
import 'package:api/src/functions/tasks/query7.dart' as tasksQuery7;
import 'package:api/src/functions/tasks/query9.dart' as tasksQuery9;
import 'package:api/src/functions/tasks/query10.dart' as tasksQuery10;
import 'package:api/src/functions/tasks/query11.dart' as tasksQuery11;
import 'package:api/src/functions/tasks/query13.dart' as tasksQuery13;
import 'package:api/src/functions/tasks/query14.dart' as tasksQuery14;
import 'package:api/src/functions/tasks/query15.dart' as tasksQuery15;
import 'package:api/src/functions/tasks/query16.dart' as tasksQuery16;
import 'package:api/src/functions/tasks/query17.dart' as tasksQuery17;
import 'package:api/src/functions/tasks/query18.dart' as tasksQuery18;
import 'package:api/src/functions/tasks/query19.dart' as tasksQuery19;
import 'package:api/src/functions/tasks/query20.dart' as tasksQuery20;
import 'package:api/src/functions/tasks/query21.dart' as tasksQuery21;
import 'package:api/src/functions/tasks/query22.dart' as tasksQuery22;
import 'package:api/src/functions/tasks/query24.dart' as tasksQuery24;
import 'package:api/src/functions/tasks/query25.dart' as tasksQuery25;
import 'package:api/src/functions/tasks/query26.dart' as tasksQuery26;
import 'package:api/src/functions/tasks/query27.dart' as tasksQuery27;
import 'package:api/src/functions/tasks/query28.dart' as tasksQuery28;
import 'package:api/src/functions/tasks/query29.dart' as tasksQuery29;
import 'package:api/src/functions/tasks/query30.dart' as tasksQuery30;
import 'package:api/src/functions/tasks/query31.dart' as tasksQuery31;
import 'package:api/src/functions/tasks/query32.dart' as tasksQuery32;
import 'package:api/src/functions/tasks/query33.dart' as tasksQuery33;
import 'package:api/src/functions/tasks/query35.dart' as tasksQuery35;
import 'package:api/src/functions/tasks/query36.dart' as tasksQuery36;
import 'package:api/src/functions/tasks/query37.dart' as tasksQuery37;
import 'package:api/src/functions/tasks/query38.dart' as tasksQuery38;
import 'package:api/src/functions/tasks/query39.dart' as tasksQuery39;
import 'package:api/src/functions/tasks/query40.dart' as tasksQuery40;
import 'package:api/src/functions/tasks/query41.dart' as tasksQuery41;
import 'package:api/src/functions/tasks/query42.dart' as tasksQuery42;
import 'package:api/src/functions/tasks/query43.dart' as tasksQuery43;
import 'package:api/src/functions/tasks/query44.dart' as tasksQuery44;
import 'package:api/src/functions/tasks/query45.dart' as tasksQuery45;
import 'package:api/src/functions/tasks/query58.dart' as tasksQuery58;
import 'package:api/src/functions/tasks/query59.dart' as tasksQuery59;
import 'package:api/src/functions/tasks/query60.dart' as tasksQuery60;
import 'package:api/src/functions/tasks/query61.dart' as tasksQuery61;
import 'package:api/src/functions/tasks/query62.dart' as tasksQuery62;
import 'package:api/src/functions/tasks/query63.dart' as tasksQuery63;
import 'package:api/src/functions/tasks/query64.dart' as tasksQuery64;
import 'package:api/src/functions/tasks/query65.dart' as tasksQuery65;
import 'package:api/src/functions/tasks/query66.dart' as tasksQuery66;
import 'package:api/src/functions/tasks/query67.dart' as tasksQuery67;
import 'package:api/src/functions/tasks/query69.dart' as tasksQuery69;
import 'package:api/src/functions/tasks/query70.dart' as tasksQuery70;
import 'package:api/src/functions/tasks/query71.dart' as tasksQuery71;
import 'package:api/src/functions/tasks/query72.dart' as tasksQuery72;
import 'package:api/src/functions/tasks/query73.dart' as tasksQuery73;
import 'package:api/src/functions/tasks/query74.dart' as tasksQuery74;
import 'package:api/src/functions/tasks/query75.dart' as tasksQuery75;
import 'package:api/src/functions/tasks/query76.dart' as tasksQuery76;
import 'package:api/src/functions/tasks/query77.dart' as tasksQuery77;
import 'package:api/src/functions/tasks/query78.dart' as tasksQuery78;
import 'package:api/src/functions/tasks/query79.dart' as tasksQuery79;
import 'package:api/src/functions/tasks/query81.dart' as tasksQuery81;
import 'package:api/src/functions/tasks/query82.dart' as tasksQuery82;
import 'package:api/src/functions/tasks/query83.dart' as tasksQuery83;
import 'package:api/src/functions/tasks/query84.dart' as tasksQuery84;
import 'package:api/src/functions/tasks/query85.dart' as tasksQuery85;
import 'package:api/src/functions/tasks/query86.dart' as tasksQuery86;
import 'package:api/src/functions/tasks/query87.dart' as tasksQuery87;
import 'package:api/src/functions/tasks/query88.dart' as tasksQuery88;
import 'package:api/src/functions/tasks/query89.dart' as tasksQuery89;
import 'package:api/src/functions/tasks/query90.dart' as tasksQuery90;
import 'package:api/src/functions/tasks/query92.dart' as tasksQuery92;
import 'package:api/src/functions/tasks/query93.dart' as tasksQuery93;
import 'package:api/src/functions/tasks/query94.dart' as tasksQuery94;
import 'package:api/src/functions/tasks/query95.dart' as tasksQuery95;
import 'package:api/src/functions/tasks/query96.dart' as tasksQuery96;
import 'package:api/src/functions/tasks/query97.dart' as tasksQuery97;
import 'package:api/src/functions/tasks/query98.dart' as tasksQuery98;
import 'package:api/src/functions/tasks/query100.dart' as tasksQuery100;
import 'package:api/src/functions/tasks/query101.dart' as tasksQuery101;
import 'package:api/src/functions/tasks/query102.dart' as tasksQuery102;
import 'package:api/src/functions/tasks/query103.dart' as tasksQuery103;
import 'package:api/src/functions/tasks/query104.dart' as tasksQuery104;
import 'package:api/src/functions/tasks/query105.dart' as tasksQuery105;
import 'package:api/src/functions/tasks/query106.dart' as tasksQuery106;
import 'package:api/src/functions/tasks/query107.dart' as tasksQuery107;
import 'package:api/src/functions/tasks/query108.dart' as tasksQuery108;
import 'package:api/src/functions/tasks/query109.dart' as tasksQuery109;
import 'package:api/src/functions/tasks/query110.dart' as tasksQuery110;
import 'package:api/src/functions/tasks/query111.dart' as tasksQuery111;
import 'package:api/src/functions/tasks/query112.dart' as tasksQuery112;
import 'package:api/src/functions/tasks/query113.dart' as tasksQuery113;
import 'package:api/src/functions/tasks/query114.dart' as tasksQuery114;
import 'package:api/src/functions/tasks/query115.dart' as tasksQuery115;
import 'package:api/src/functions/tasks/query116.dart' as tasksQuery116;
import 'package:api/src/functions/tasks/query117.dart' as tasksQuery117;
import 'package:api/src/functions/tasks/query118.dart' as tasksQuery118;
import 'package:api/src/functions/tasks/query119.dart' as tasksQuery119;
import 'package:api/src/functions/tasks/query120.dart' as tasksQuery120;
import 'package:api/src/functions/tasks/query121.dart' as tasksQuery121;
import 'package:api/src/functions/tasks/query122.dart' as tasksQuery122;
import 'package:api/src/functions/tasks/query123.dart' as tasksQuery123;
import 'package:api/src/functions/tasks/query124.dart' as tasksQuery124;

final eq = DeepCollectionEquality.unordered();

void main() {
  setUpAll(() async {
    await ConvexClient.init();
  });

  test('query1', () async {
    final datas = <Query1Args>[
      (i: 'gravida'),
      (i: 'scelerisque'),
      (i: 'ipsum'),
      (i: 'orci'),
      (i: 'urna'),
      (i: 'in'),
      (i: 'mi'),
      (i: 'dapibus'),
      (i: 'augue'),
      (i: 'tempus'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery1.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery1.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query2', () async {
    final datas = <Query2Args>[
      (i: 0.8117190553258435),
      (i: 0.6735508472614264),
      (i: 0.6291101608564581),
      (i: 0.6850531228285638),
      (i: 0.41323082804165157),
      (i: 0.7865535883737742),
      (i: 0.7095908039267691),
      (i: 0.46793916665530355),
      (i: 0.34981514305647343),
      (i: 0.06315837385323053),
    ];
    for (final data in datas) {
      final serialized = tasksQuery2.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery2.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query3', () async {
    final datas = <Query3Args>[
      (i: true),
      (i: true),
      (i: false),
      (i: true),
      (i: false),
      (i: true),
      (i: true),
      (i: true),
      (i: true),
      (i: true),
    ];
    for (final data in datas) {
      final serialized = tasksQuery3.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery3.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query4', () async {
    final datas = <Query4Args>[
      (i: 476858),
      (i: 190176),
      (i: 773272),
      (i: 829772),
      (i: 549026),
      (i: 561946),
      (i: 654708),
      (i: 184337),
      (i: 757911),
      (i: 512643),
    ];
    for (final data in datas) {
      final serialized = tasksQuery4.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery4.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query5', () async {
    final datas = <Query5Args>[
      (
        i: Uint8ListWithEquality.fromList([
          247,
          71,
          248,
          250,
          90,
          110,
          248,
          143,
          74,
          44,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          40,
          53,
          43,
          219,
          14,
          2,
          140,
          119,
          95,
          27,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          56,
          112,
          149,
          185,
          165,
          183,
          122,
          110,
          87,
          52,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          77,
          123,
          68,
          54,
          121,
          192,
          130,
          68,
          196,
          38,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          213,
          4,
          222,
          234,
          218,
          84,
          228,
          76,
          68,
          59,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          213,
          50,
          185,
          249,
          27,
          157,
          188,
          61,
          34,
          80,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          225,
          101,
          44,
          70,
          163,
          20,
          175,
          231,
          147,
          115,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          222,
          116,
          46,
          236,
          22,
          147,
          251,
          92,
          107,
          57,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          229,
          147,
          82,
          106,
          146,
          2,
          50,
          98,
          140,
          92,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          17,
          18,
          115,
          134,
          81,
          90,
          250,
          159,
          75,
          135,
        ]),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery5.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery5.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query6', () async {
    final datas = <Query6Args>[
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery6.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery6.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query7', () async {
    final datas = <Query7Args>[
      (i: 0.05997208954224198),
      (i: true),
      (i: 'venenatis'),
      (i: false),
      (i: false),
      (i: 0.06470045028940319),
      (i: 57648),
      (i: 'dis'),
      (i: true),
      (i: 'lobortis'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery7.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery7.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query9', () async {
    final datas = <Query9Args>[
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery9.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery9.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query10', () async {
    final datas = <Query10Args>[
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: $1Literal()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery10.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery10.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query11', () async {
    final datas = <Query11Args>[
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
      (i: $TrueLiteral()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery11.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery11.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query13', () async {
    final datas = <Query13Args>[
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined('tincidunt')),
      (i: Undefined()),
      (i: Defined('consectetur')),
      (i: Undefined()),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery13.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery13.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query14', () async {
    final datas = <Query14Args>[
      (i: Defined(0.20192960762072976)),
      (i: Defined(0.7029068640422587)),
      (i: Defined(0.17277856274421288)),
      (i: Defined(0.4572186732186633)),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(0.16137197187016805)),
      (i: Defined(0.5072239325971812)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery14.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery14.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query15', () async {
    final datas = <Query15Args>[
      (i: Defined(true)),
      (i: Defined(false)),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(false)),
      (i: Defined(false)),
      (i: Defined(true)),
      (i: Defined(false)),
      (i: Defined(true)),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery15.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery15.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query16', () async {
    final datas = <Query16Args>[
      (i: Defined(36950)),
      (i: Defined(524343)),
      (i: Undefined()),
      (i: Defined(292061)),
      (i: Defined(719580)),
      (i: Defined(654866)),
      (i: Defined(993171)),
      (i: Defined(805434)),
      (i: Undefined()),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery16.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery16.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query17', () async {
    final datas = <Query17Args>[
      (i: Undefined()),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            157,
            151,
            187,
            201,
            100,
            146,
            72,
            167,
            44,
            41,
          ]),
        ),
      ),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            154,
            235,
            25,
            17,
            9,
            152,
            153,
            41,
            210,
            79,
          ]),
        ),
      ),
      (i: Undefined()),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            22,
            36,
            118,
            48,
            101,
            217,
            249,
            246,
            53,
            16,
          ]),
        ),
      ),
      (i: Undefined()),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            101,
            4,
            249,
            113,
            128,
            37,
            123,
            60,
            66,
            222,
          ]),
        ),
      ),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            38,
            236,
            154,
            71,
            85,
            127,
            105,
            228,
            249,
            124,
          ]),
        ),
      ),
      (i: Undefined()),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery17.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery17.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query18', () async {
    final datas = <Query18Args>[
      (i: Undefined()),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Undefined()),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
    ];
    for (final data in datas) {
      final serialized = tasksQuery18.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery18.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query19', () async {
    final datas = <Query19Args>[
      (i: Defined(82505)),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(595432)),
      (i: Defined(true)),
      (i: Undefined()),
      (i: Defined(true)),
      (i: Undefined()),
      (i: Defined('viverra')),
      (i: Defined('integer')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery19.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery19.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query20', () async {
    final datas = <Query20Args>[
      (i: Undefined()),
      (i: Defined($HiLiteral())),
      (i: Defined($HiLiteral())),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($HiLiteral())),
      (i: Defined($HiLiteral())),
      (i: Defined($HiLiteral())),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery20.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery20.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query21', () async {
    final datas = <Query21Args>[
      (i: Undefined()),
      (i: Defined($1Literal())),
      (i: Defined($1Literal())),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($1Literal())),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery21.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery21.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query22', () async {
    final datas = <Query22Args>[
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($TrueLiteral())),
      (i: Defined($TrueLiteral())),
      (i: Defined($TrueLiteral())),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($TrueLiteral())),
      (i: Defined($TrueLiteral())),
    ];
    for (final data in datas) {
      final serialized = tasksQuery22.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery22.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query24', () async {
    final datas = <Query24Args>[
      (i: 'massa'),
      (i: null),
      (i: 'ultrices'),
      (i: null),
      (i: null),
      (i: 'metus'),
      (i: 'suspendisse'),
      (i: 'sollicitudin'),
      (i: 'netus'),
      (i: 'cursus'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery24.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery24.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query25', () async {
    final datas = <Query25Args>[
      (i: null),
      (i: 0.37941987798117194),
      (i: null),
      (i: 0.011443419286690348),
      (i: 0.17906251833856002),
      (i: null),
      (i: 0.5594835921265406),
      (i: null),
      (i: 0.7938578873609311),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery25.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery25.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query26', () async {
    final datas = <Query26Args>[
      (i: false),
      (i: null),
      (i: null),
      (i: null),
      (i: null),
      (i: true),
      (i: false),
      (i: null),
      (i: null),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery26.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery26.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query27', () async {
    final datas = <Query27Args>[
      (i: null),
      (i: null),
      (i: null),
      (i: 918214),
      (i: null),
      (i: 960758),
      (i: null),
      (i: null),
      (i: 285727),
      (i: 586295),
    ];
    for (final data in datas) {
      final serialized = tasksQuery27.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery27.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query28', () async {
    final datas = <Query28Args>[
      (i: null),
      (
        i: Uint8ListWithEquality.fromList([
          110,
          112,
          112,
          130,
          49,
          110,
          66,
          204,
          37,
          18,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          32,
          171,
          238,
          69,
          3,
          46,
          124,
          75,
          194,
          64,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          158,
          140,
          163,
          48,
          67,
          243,
          44,
          181,
          243,
          99,
        ]),
      ),
      (i: null),
      (
        i: Uint8ListWithEquality.fromList([
          2,
          199,
          16,
          130,
          102,
          200,
          71,
          102,
          101,
          130,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          203,
          48,
          176,
          63,
          76,
          158,
          205,
          29,
          246,
          74,
        ]),
      ),
      (i: null),
      (i: null),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery28.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery28.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query29', () async {
    final datas = <Query29Args>[
      (i: null),
      (i: null),
      (i: null),
      (i: null),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: null),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: null),
      (i: null),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery29.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery29.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query30', () async {
    final datas = <Query30Args>[
      (i: false),
      (i: null),
      (i: 637427),
      (i: 'dictumst'),
      (i: null),
      (i: false),
      (i: 903355),
      (i: null),
      (i: null),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery30.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery30.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query31', () async {
    final datas = <Query31Args>[
      (i: null),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
      (i: null),
      (i: null),
      (i: null),
      (i: null),
      (i: $HiLiteral()),
      (i: $HiLiteral()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery31.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery31.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query32', () async {
    final datas = <Query32Args>[
      (i: $1Literal()),
      (i: null),
      (i: $1Literal()),
      (i: null),
      (i: $1Literal()),
      (i: $1Literal()),
      (i: null),
      (i: null),
      (i: $1Literal()),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery32.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery32.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query33', () async {
    final datas = <Query33Args>[
      (i: $TrueLiteral()),
      (i: null),
      (i: null),
      (i: null),
      (i: $TrueLiteral()),
      (i: null),
      (i: null),
      (i: $TrueLiteral()),
      (i: null),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery33.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery33.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query35', () async {
    final datas = <Query35Args>[
      (i: <String>['cursus', 'nunc'].lock),
      (i: <String>['aenean'].lock),
      (i: <String>['ligula'].lock),
      (i: <String>['sit', 'auctor', 'tempus', 'ut', 'pretium', 'lorem'].lock),
      (i: <String>['scelerisque', 'montes'].lock),
      (i: <String>['ultricies', 'potenti', 'cursus', 'viverra', 'sociis'].lock),
      (
        i: <String>[
          'aliquam',
          'habitant',
          'justo',
          'pulvinar',
          'ac',
          'nibh',
          'praesent',
        ].lock,
      ),
      (
        i: <String>[
          'fames',
          'cum',
          'posuere',
          'convallis',
          'urna',
          'nullam',
          'dignissim',
          'est',
          'dictum',
        ].lock,
      ),
      (
        i: <String>[
          'nec',
          'dis',
          'ac',
          'commodo',
          'sodales',
          'adipiscing',
          'quam',
          'pharetra',
          'hendrerit',
        ].lock,
      ),
      (i: <String>['magnis', 'tristique', 'sem'].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery35.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery35.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query36', () async {
    final datas = <Query36Args>[
      (i: <double>[0.5011581746004544].lock),
      (
        i: <double>[
          0.295629353994602,
          0.047595671037702125,
          0.9071752192430683,
          0.15863691264850166,
          0.2704076446344874,
          0.6195541901162814,
          0.9820081967811229,
          0.7957389227126415,
        ].lock,
      ),
      (i: <double>[0.23594333222518826, 0.673442885722903].lock),
      (
        i: <double>[
          0.2964479820313708,
          0.14494328699704484,
          0.2724720052757812,
          0.5231515543090595,
          0.23968087622880863,
          0.2056777758137288,
        ].lock,
      ),
      (
        i: <double>[
          0.02769933174388961,
          0.12214583894047648,
          0.9685825971390272,
          0.2904713976254155,
          0.7325590309668862,
          0.43419552613191226,
          0.8303274969836641,
          0.14404909911843755,
          0.630621271510091,
        ].lock,
      ),
      (
        i: <double>[
          0.5196558273200926,
          0.802500692015275,
          0.28781339280252916,
          0.22058805962105965,
          0.2814833091229374,
          0.5864996585421546,
          0.5586747381524372,
        ].lock,
      ),
      (
        i: <double>[
          0.6994087197529351,
          0.306246279557962,
          0.9976809634663889,
          0.2796443993610911,
          0.8094737297946559,
        ].lock,
      ),
      (
        i: <double>[
          0.46399285485775943,
          0.5339197040099358,
          0.9254701093145568,
          0.928009418737071,
          0.1108293261245874,
          0.4697421361630294,
          0.34088377066055353,
          0.5542044242273018,
          0.435362441030702,
        ].lock,
      ),
      (i: <double>[0.8387995990835592, 0.7738282136375197].lock),
      (
        i: <double>[
          0.1353977142676861,
          0.12856276629399854,
          0.005439788152848846,
          0.7022410759543123,
          0.8063577539574297,
          0.4219239737206685,
          0.44433846114403586,
          0.6132064977731586,
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery36.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery36.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query37', () async {
    final datas = <Query37Args>[
      (i: <bool>[].lock),
      (i: <bool>[true, false].lock),
      (i: <bool>[false, true, false].lock),
      (i: <bool>[false, true].lock),
      (i: <bool>[true, false].lock),
      (i: <bool>[true, true, false, false, true, false].lock),
      (i: <bool>[true, false, true].lock),
      (i: <bool>[false, false].lock),
      (i: <bool>[true].lock),
      (i: <bool>[true, true, true, true, true, true, true, true, true].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery37.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery37.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query38', () async {
    final datas = <Query38Args>[
      (i: <int>[461927].lock),
      (i: <int>[872444, 792536, 357209, 854295, 123661, 724912, 104898].lock),
      (i: <int>[608167, 339811, 497002].lock),
      (i: <int>[560869, 389114, 672689, 17493, 527154].lock),
      (
        i: <int>[
          435341,
          33830,
          758733,
          648320,
          3617,
          265836,
          469049,
          196484,
          744105,
        ].lock,
      ),
      (i: <int>[360866, 902949, 788614, 489199].lock),
      (i: <int>[825709, 820231, 218720, 586599, 155841].lock),
      (i: <int>[].lock),
      (i: <int>[283960, 539961, 532193, 234703, 601121, 100207].lock),
      (
        i: <int>[
          854192,
          228554,
          361912,
          447086,
          752652,
          652952,
          178540,
          905729,
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery38.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery38.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query39', () async {
    final datas = <Query39Args>[
      (i: <Uint8ListWithEquality>[].lock),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            54,
            249,
            251,
            164,
            120,
            50,
            198,
            237,
            28,
            74,
          ]),
          Uint8ListWithEquality.fromList([
            176,
            87,
            7,
            24,
            178,
            68,
            237,
            186,
            217,
            73,
          ]),
          Uint8ListWithEquality.fromList([
            209,
            237,
            59,
            5,
            203,
            87,
            254,
            153,
            45,
            36,
          ]),
          Uint8ListWithEquality.fromList([
            196,
            168,
            100,
            98,
            4,
            37,
            92,
            67,
            38,
            92,
          ]),
          Uint8ListWithEquality.fromList([
            24,
            100,
            153,
            111,
            127,
            176,
            68,
            253,
            99,
            61,
          ]),
          Uint8ListWithEquality.fromList([
            46,
            112,
            235,
            226,
            212,
            123,
            235,
            202,
            36,
            31,
          ]),
          Uint8ListWithEquality.fromList([
            108,
            189,
            68,
            63,
            108,
            249,
            178,
            60,
            200,
            201,
          ]),
          Uint8ListWithEquality.fromList([
            228,
            47,
            170,
            47,
            102,
            149,
            84,
            97,
            163,
            39,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            27,
            202,
            125,
            56,
            233,
            179,
            57,
            71,
            58,
            102,
          ]),
          Uint8ListWithEquality.fromList([
            253,
            246,
            36,
            186,
            43,
            134,
            85,
            30,
            200,
            3,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            155,
            58,
            144,
            137,
            30,
            82,
            95,
            114,
            233,
            96,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            155,
            123,
            164,
            80,
            202,
            100,
            207,
            101,
            126,
            172,
          ]),
          Uint8ListWithEquality.fromList([
            8,
            107,
            137,
            68,
            205,
            252,
            147,
            249,
            184,
            181,
          ]),
          Uint8ListWithEquality.fromList([
            106,
            234,
            68,
            35,
            16,
            251,
            35,
            42,
            115,
            116,
          ]),
          Uint8ListWithEquality.fromList([
            193,
            250,
            110,
            158,
            249,
            203,
            193,
            187,
            136,
            207,
          ]),
          Uint8ListWithEquality.fromList([
            104,
            81,
            133,
            143,
            140,
            201,
            140,
            99,
            17,
            172,
          ]),
          Uint8ListWithEquality.fromList([
            133,
            126,
            96,
            186,
            31,
            77,
            126,
            48,
            126,
            83,
          ]),
          Uint8ListWithEquality.fromList([
            93,
            107,
            1,
            174,
            12,
            156,
            72,
            169,
            19,
            165,
          ]),
          Uint8ListWithEquality.fromList([
            188,
            54,
            230,
            180,
            129,
            69,
            124,
            230,
            11,
            154,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            190,
            104,
            208,
            222,
            42,
            225,
            152,
            171,
            107,
            104,
          ]),
          Uint8ListWithEquality.fromList([
            238,
            2,
            230,
            203,
            24,
            180,
            101,
            194,
            211,
            246,
          ]),
          Uint8ListWithEquality.fromList([
            87,
            198,
            9,
            251,
            119,
            138,
            253,
            64,
            216,
            116,
          ]),
          Uint8ListWithEquality.fromList([
            135,
            241,
            211,
            51,
            214,
            179,
            37,
            195,
            50,
            153,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            27,
            138,
            204,
            140,
            86,
            167,
            125,
            73,
            42,
            105,
          ]),
          Uint8ListWithEquality.fromList([
            153,
            219,
            207,
            247,
            251,
            72,
            123,
            109,
            169,
            121,
          ]),
          Uint8ListWithEquality.fromList([
            178,
            117,
            105,
            243,
            112,
            188,
            120,
            156,
            64,
            196,
          ]),
          Uint8ListWithEquality.fromList([
            235,
            212,
            36,
            119,
            2,
            89,
            29,
            170,
            251,
            89,
          ]),
          Uint8ListWithEquality.fromList([
            102,
            158,
            49,
            64,
            24,
            16,
            209,
            118,
            68,
            185,
          ]),
          Uint8ListWithEquality.fromList([
            1,
            115,
            154,
            108,
            41,
            228,
            169,
            71,
            43,
            237,
          ]),
          Uint8ListWithEquality.fromList([
            109,
            81,
            68,
            226,
            207,
            37,
            67,
            237,
            124,
            141,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            51,
            163,
            86,
            220,
            189,
            83,
            32,
            254,
            95,
            238,
          ]),
          Uint8ListWithEquality.fromList([
            155,
            69,
            145,
            170,
            249,
            176,
            233,
            97,
            30,
            165,
          ]),
          Uint8ListWithEquality.fromList([
            64,
            79,
            16,
            141,
            80,
            48,
            164,
            57,
            220,
            119,
          ]),
          Uint8ListWithEquality.fromList([
            96,
            160,
            158,
            85,
            54,
            24,
            6,
            179,
            195,
            65,
          ]),
          Uint8ListWithEquality.fromList([
            13,
            2,
            152,
            47,
            32,
            133,
            88,
            104,
            241,
            56,
          ]),
          Uint8ListWithEquality.fromList([
            75,
            75,
            104,
            59,
            238,
            73,
            142,
            188,
            167,
            10,
          ]),
          Uint8ListWithEquality.fromList([
            132,
            240,
            183,
            144,
            207,
            147,
            192,
            31,
            162,
            168,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            38,
            104,
            169,
            162,
            55,
            84,
            165,
            225,
            245,
            88,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            60,
            212,
            249,
            76,
            9,
            160,
            74,
            137,
            183,
            39,
          ]),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery39.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery39.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query40', () async {
    final datas = <Query40Args>[
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (i: <TasksId>[].lock),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery40.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery40.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query41', () async {
    final datas = <Query41Args>[
      (
        i: <dynamic>[
          350703,
          0.7071854184388549,
          true,
          'habitant',
          false,
          0.21140764094029663,
          0.2247333954372973,
          true,
        ].lock,
      ),
      (i: <dynamic>['morbi', 280310, 0.6392162004700281, true, 'velit'].lock),
      (
        i: <dynamic>[
          0.17306889563664773,
          true,
          784421,
          369889,
          0.32956491702072044,
          0.06281858527107742,
        ].lock,
      ),
      (i: <dynamic>[0.1017220686324225, 0.9639702796949206, 'amet'].lock),
      (i: <dynamic>[true, false, 0.5275240951059998, 986186, false].lock),
      (
        i: <dynamic>[
          739390,
          'imperdiet',
          766741,
          0.6897721967101179,
          'adipiscing',
        ].lock,
      ),
      (i: <dynamic>['dui', true, 766125, 0.07215993873048321].lock),
      (i: <dynamic>[215451, 369918, 0.3971149426581999].lock),
      (
        i: <dynamic>[
          false,
          0.8523664694652379,
          0.08188754912807938,
          209351,
        ].lock,
      ),
      (
        i: <dynamic>[
          false,
          0.771555655160655,
          599311,
          296910,
          0.08242329588294439,
          0.22455780553737592,
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery41.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery41.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query42', () async {
    final datas = <Query42Args>[
      (i: <void>[].lock),
      (i: <void>[].lock),
      (i: <void>[null, null].lock),
      (i: <void>[null].lock),
      (i: <void>[null, null, null, null, null, null, null, null].lock),
      (i: <void>[null, null, null, null].lock),
      (i: <void>[null].lock),
      (i: <void>[null, null, null, null, null, null].lock),
      (i: <void>[null, null, null, null, null].lock),
      (i: <void>[null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery42.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery42.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query43', () async {
    final datas = <Query43Args>[
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (i: <$HiLiteral>[$HiLiteral(), $HiLiteral()].lock),
      (i: <$HiLiteral>[$HiLiteral(), $HiLiteral(), $HiLiteral()].lock),
      (
        i: <$HiLiteral>[
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery43.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery43.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query44', () async {
    final datas = <Query44Args>[
      (i: <$1Literal>[$1Literal(), $1Literal()].lock),
      (
        i: <$1Literal>[
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
        ].lock,
      ),
      (
        i: <$1Literal>[
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
        ].lock,
      ),
      (
        i: <$1Literal>[
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
        ].lock,
      ),
      (i: <$1Literal>[$1Literal(), $1Literal(), $1Literal()].lock),
      (
        i: <$1Literal>[
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
        ].lock,
      ),
      (i: <$1Literal>[].lock),
      (
        i: <$1Literal>[
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
          $1Literal(),
        ].lock,
      ),
      (i: <$1Literal>[$1Literal(), $1Literal()].lock),
      (i: <$1Literal>[].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery44.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery44.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query45', () async {
    final datas = <Query45Args>[
      (i: <$TrueLiteral>[$TrueLiteral()].lock),
      (
        i: <$TrueLiteral>[
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
        ].lock,
      ),
      (
        i: <$TrueLiteral>[
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
        ].lock,
      ),
      (
        i: <$TrueLiteral>[
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
        ].lock,
      ),
      (i: <$TrueLiteral>[$TrueLiteral()].lock),
      (i: <$TrueLiteral>[$TrueLiteral(), $TrueLiteral()].lock),
      (i: <$TrueLiteral>[].lock),
      (
        i: <$TrueLiteral>[
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
        ].lock,
      ),
      (
        i: <$TrueLiteral>[
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
        ].lock,
      ),
      (i: <$TrueLiteral>[$TrueLiteral(), $TrueLiteral(), $TrueLiteral()].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery45.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery45.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query58', () async {
    final datas = <Query58Args>[
      (i: <String?>[null, 'faucibus'].lock),
      (i: <String?>[null, null].lock),
      (i: <String?>[null].lock),
      (i: <String?>[null, 'feugiat'].lock),
      (i: <String?>[].lock),
      (i: <String?>[null, null, null, 'et', null, null, 'mus', 'lacus'].lock),
      (i: <String?>[null, null, null, 'nam', 'quam', 'accumsan'].lock),
      (i: <String?>['penatibus'].lock),
      (
        i: <String?>[
          'auctor',
          'vestibulum',
          null,
          'egestas',
          null,
          'purus',
          null,
          'elit',
          null,
        ].lock,
      ),
      (i: <String?>[null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery58.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery58.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query59', () async {
    final datas = <Query59Args>[
      (
        i: <double?>[
          null,
          0.6661372204079995,
          null,
          null,
          0.24592215722095845,
          0.5335910698436408,
          0.2584268857305131,
          0.4496082143028154,
          0.33162501509372433,
        ].lock,
      ),
      (i: <double?>[0.4329933501982811].lock),
      (
        i: <double?>[
          0.7084928462906448,
          null,
          0.9070424888997114,
          null,
          null,
        ].lock,
      ),
      (i: <double?>[null].lock),
      (
        i: <double?>[
          0.4706678064085761,
          null,
          0.21138909894697544,
          0.1722146722524004,
          null,
          0.3345665413276413,
          0.044269556274776134,
        ].lock,
      ),
      (i: <double?>[0.9866388583732032, null, null].lock),
      (i: <double?>[0.7165502624559082, null, null].lock),
      (i: <double?>[0.950692936769932].lock),
      (
        i: <double?>[
          0.007417208068301151,
          0.17634716665428452,
          0.9127817971689179,
        ].lock,
      ),
      (i: <double?>[].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery59.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery59.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query60', () async {
    final datas = <Query60Args>[
      (i: <bool?>[true].lock),
      (i: <bool?>[null].lock),
      (i: <bool?>[].lock),
      (i: <bool?>[false, null, true, true, null, true].lock),
      (i: <bool?>[true, null, true, true, null, null].lock),
      (i: <bool?>[null, null, null, true, null].lock),
      (i: <bool?>[null, false, true, null].lock),
      (i: <bool?>[false, null, null, null, null, null, true].lock),
      (i: <bool?>[].lock),
      (i: <bool?>[true, null, false, null, null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery60.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery60.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query61', () async {
    final datas = <Query61Args>[
      (i: <int?>[714667, null, null, null, 905679, null].lock),
      (i: <int?>[231378, 725208].lock),
      (
        i: <int?>[
          153371,
          144698,
          780440,
          null,
          188786,
          null,
          804354,
          null,
        ].lock,
      ),
      (i: <int?>[null, null, null, 102647, 754437, null].lock),
      (i: <int?>[null, null, 861257, 574625, 527120, null, null].lock),
      (i: <int?>[945939].lock),
      (i: <int?>[249532, 485411, 82551].lock),
      (i: <int?>[null, 309558].lock),
      (i: <int?>[216260, null, 860678, 656963, null, null, 585387].lock),
      (
        i: <int?>[
          151656,
          null,
          762366,
          null,
          729966,
          null,
          null,
          97185,
          null,
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery61.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery61.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query62', () async {
    final datas = <Query62Args>[
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            28,
            33,
            71,
            1,
            2,
            176,
            36,
            26,
            27,
            140,
          ]),
          null,
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            198,
            61,
            211,
            185,
            250,
            124,
            80,
            116,
            72,
            9,
          ]),
          Uint8ListWithEquality.fromList([
            141,
            119,
            32,
            45,
            152,
            163,
            63,
            171,
            171,
            63,
          ]),
          Uint8ListWithEquality.fromList([
            195,
            156,
            162,
            186,
            30,
            19,
            249,
            8,
            195,
            42,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          null,
          Uint8ListWithEquality.fromList([
            114,
            8,
            239,
            249,
            199,
            70,
            35,
            106,
            41,
            247,
          ]),
          Uint8ListWithEquality.fromList([
            6,
            246,
            90,
            115,
            242,
            31,
            121,
            165,
            195,
            18,
          ]),
          Uint8ListWithEquality.fromList([
            186,
            76,
            117,
            54,
            149,
            240,
            233,
            31,
            174,
            15,
          ]),
          null,
          null,
          null,
          null,
          Uint8ListWithEquality.fromList([
            165,
            8,
            100,
            235,
            59,
            79,
            128,
            81,
            82,
            29,
          ]),
        ].lock,
      ),
      (i: <Uint8ListWithEquality?>[null, null].lock),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            65,
            33,
            205,
            250,
            110,
            125,
            193,
            136,
            27,
            179,
          ]),
          null,
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            125,
            152,
            12,
            121,
            24,
            177,
            17,
            143,
            185,
            9,
          ]),
          null,
          Uint8ListWithEquality.fromList([
            52,
            75,
            242,
            220,
            43,
            219,
            163,
            243,
            58,
            28,
          ]),
          Uint8ListWithEquality.fromList([
            85,
            250,
            29,
            209,
            164,
            127,
            66,
            210,
            159,
            100,
          ]),
          null,
          null,
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            193,
            76,
            20,
            193,
            39,
            34,
            150,
            176,
            218,
            132,
          ]),
          Uint8ListWithEquality.fromList([
            215,
            138,
            205,
            232,
            18,
            178,
            223,
            135,
            88,
            141,
          ]),
          null,
          Uint8ListWithEquality.fromList([
            50,
            105,
            173,
            232,
            130,
            207,
            157,
            28,
            241,
            159,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            18,
            54,
            192,
            171,
            14,
            133,
            120,
            28,
            1,
            176,
          ]),
          Uint8ListWithEquality.fromList([
            179,
            248,
            97,
            160,
            140,
            223,
            7,
            240,
            104,
            244,
          ]),
          null,
          null,
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          null,
          Uint8ListWithEquality.fromList([
            33,
            248,
            163,
            10,
            156,
            35,
            141,
            46,
            140,
            76,
          ]),
          Uint8ListWithEquality.fromList([
            84,
            117,
            83,
            210,
            170,
            149,
            176,
            17,
            204,
            25,
          ]),
          Uint8ListWithEquality.fromList([
            50,
            229,
            162,
            9,
            147,
            97,
            21,
            165,
            5,
            132,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          null,
          Uint8ListWithEquality.fromList([
            174,
            233,
            176,
            215,
            44,
            217,
            249,
            140,
            17,
            76,
          ]),
          null,
          Uint8ListWithEquality.fromList([
            211,
            214,
            29,
            248,
            130,
            158,
            233,
            2,
            37,
            216,
          ]),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery62.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery62.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query63', () async {
    final datas = <Query63Args>[
      (
        i: <TasksId?>[
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId?>[
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
        ].lock,
      ),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
        ].lock,
      ),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
        ].lock,
      ),
      (
        i: <TasksId?>[
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId?>[
          null,
          null,
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (i: <TasksId?>[TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')].lock),
      (
        i: <TasksId?>[
          null,
          null,
          null,
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
        ].lock,
      ),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery63.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery63.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query64', () async {
    final datas = <Query64Args>[
      (i: <dynamic>[null, 0.2875875586833454, 'auctor', null, 309198].lock),
      (i: <dynamic>[336546, null, 'aliquet', 804116, 'feugiat', 711795].lock),
      (
        i: <dynamic>[
          null,
          null,
          null,
          0.024210622811926763,
          false,
          'neque',
          810789,
        ].lock,
      ),
      (
        i: <dynamic>[
          0.4819600518041086,
          null,
          'facilisi',
          null,
          true,
          0.7719881445664636,
          null,
          null,
          null,
        ].lock,
      ),
      (i: <dynamic>[null, true, null, null, null].lock),
      (i: <dynamic>[null, null, 422335, 'erat', null].lock),
      (i: <dynamic>['erat'].lock),
      (
        i: <dynamic>[
          0.03133627107963599,
          981071,
          true,
          'libero',
          0.6291403540800379,
        ].lock,
      ),
      (i: <dynamic>[].lock),
      (i: <dynamic>[null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery64.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery64.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query65', () async {
    final datas = <Query65Args>[
      (
        i: <$HiLiteral?>[
          $HiLiteral(),
          null,
          $HiLiteral(),
          null,
          null,
          null,
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (i: <$HiLiteral?>[].lock),
      (i: <$HiLiteral?>[$HiLiteral()].lock),
      (i: <$HiLiteral?>[].lock),
      (
        i: <$HiLiteral?>[
          null,
          $HiLiteral(),
          $HiLiteral(),
          null,
          null,
          null,
          null,
          null,
        ].lock,
      ),
      (
        i: <$HiLiteral?>[
          null,
          $HiLiteral(),
          null,
          $HiLiteral(),
          $HiLiteral(),
          $HiLiteral(),
        ].lock,
      ),
      (
        i: <$HiLiteral?>[
          $HiLiteral(),
          null,
          $HiLiteral(),
          $HiLiteral(),
          null,
          $HiLiteral(),
          $HiLiteral(),
          null,
        ].lock,
      ),
      (i: <$HiLiteral?>[].lock),
      (i: <$HiLiteral?>[null, null, null, $HiLiteral()].lock),
      (
        i: <$HiLiteral?>[
          null,
          $HiLiteral(),
          $HiLiteral(),
          null,
          null,
          null,
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery65.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery65.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query66', () async {
    final datas = <Query66Args>[
      (
        i: <$1Literal?>[
          null,
          $1Literal(),
          $1Literal(),
          null,
          $1Literal(),
          null,
        ].lock,
      ),
      (i: <$1Literal?>[$1Literal()].lock),
      (i: <$1Literal?>[].lock),
      (
        i: <$1Literal?>[
          null,
          $1Literal(),
          $1Literal(),
          null,
          null,
          $1Literal(),
          null,
          $1Literal(),
          null,
        ].lock,
      ),
      (i: <$1Literal?>[$1Literal(), null, $1Literal(), $1Literal()].lock),
      (
        i: <$1Literal?>[
          $1Literal(),
          null,
          null,
          $1Literal(),
          null,
          $1Literal(),
          null,
          $1Literal(),
        ].lock,
      ),
      (i: <$1Literal?>[$1Literal(), null, null].lock),
      (i: <$1Literal?>[null, $1Literal(), null].lock),
      (i: <$1Literal?>[null, $1Literal(), $1Literal(), null].lock),
      (
        i: <$1Literal?>[
          null,
          $1Literal(),
          $1Literal(),
          $1Literal(),
          null,
          $1Literal(),
          $1Literal(),
          $1Literal(),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery66.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery66.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query67', () async {
    final datas = <Query67Args>[
      (i: <$TrueLiteral?>[null, null].lock),
      (
        i: <$TrueLiteral?>[
          null,
          null,
          null,
          $TrueLiteral(),
          $TrueLiteral(),
        ].lock,
      ),
      (i: <$TrueLiteral?>[null, null].lock),
      (
        i: <$TrueLiteral?>[
          null,
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
          $TrueLiteral(),
        ].lock,
      ),
      (i: <$TrueLiteral?>[].lock),
      (i: <$TrueLiteral?>[null, $TrueLiteral(), null, null, null].lock),
      (i: <$TrueLiteral?>[null, $TrueLiteral(), null].lock),
      (
        i: <$TrueLiteral?>[
          $TrueLiteral(),
          null,
          null,
          null,
          $TrueLiteral(),
        ].lock,
      ),
      (i: <$TrueLiteral?>[null].lock),
      (i: <$TrueLiteral?>[].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery67.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery67.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query69', () async {
    final datas = <Query69Args>[
      (
        i: <String, String>{
          'at': 'pharetra',
          'ante': 'arcu',
          'est': 'convallis',
        }.lock,
      ),
      (
        i: <String, String>{
          'sem': 'montes',
          'arcu': 'dapibus',
          'malesuada': 'parturient',
          'dictum': 'hac',
          'metus': 'fames',
          'hac': 'penatibus',
          'nascetur': 'eros',
          'netus': 'natoque',
        }.lock,
      ),
      (
        i: <String, String>{
          'mi': 'augue',
          'tempor': 'nullam',
          'habitasse': 'aenean',
          'risus': 'platea',
          'vestibulum': 'habitant',
          'dictum': 'est',
          'semper': 'vitae',
          'sodales': 'nibh',
        }.lock,
      ),
      (i: <String, String>{}.lock),
      (
        i: <String, String>{
          'condimentum': 'non',
          'cursus': 'lacinia',
          'fusce': 'integer',
          'maecenas': 'tincidunt',
          'quis': 'mi',
          'ante': 'nisl',
        }.lock,
      ),
      (
        i: <String, String>{
          'odio': 'integer',
          'consectetur': 'ultricies',
          'nibh': 'sollicitudin',
          'etiam': 'faucibus',
          'nec': 'tempus',
          'praesent': 'feugiat',
          'ultricies': 'ligula',
          'habitant': 'vestibulum',
          'habitant': 'montes',
        }.lock,
      ),
      (i: <String, String>{'neque': 'lorem'}.lock),
      (
        i: <String, String>{
          'nunc': 'integer',
          'feugiat': 'habitasse',
          'commodo': 'auctor',
          'magnis': 'pulvinar',
          'fusce': 'ac',
          'imperdiet': 'imperdiet',
        }.lock,
      ),
      (
        i: <String, String>{
          'euismod': 'lectus',
          'velit': 'nec',
          'dis': 'tristique',
          'morbi': 'faucibus',
          'commodo': 'mauris',
          'ridiculus': 'senectus',
          'viverra': 'dignissim',
          'id': 'hac',
        }.lock,
      ),
      (
        i: <String, String>{
          'fusce': 'consectetur',
          'vestibulum': 'justo',
          'scelerisque': 'adipiscing',
          'hendrerit': 'purus',
          'dapibus': 'arcu',
          'mauris': 'tempus',
          'lacus': 'pellentesque',
          'accumsan': 'feugiat',
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery69.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery69.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query70', () async {
    final datas = <Query70Args>[
      (
        i: <String, double>{
          'ut': 0.2776436485240181,
          'vitae': 0.5394780641579435,
        }.lock,
      ),
      (
        i: <String, double>{
          'platea': 0.9528939970884033,
          'in': 0.9339383291753791,
          'scelerisque': 0.45970608374979893,
          'quisque': 0.10030755953151904,
          'fames': 0.8053372433419387,
        }.lock,
      ),
      (
        i: <String, double>{
          'imperdiet': 0.5246134478693913,
          'dictumst': 0.6093728602970434,
          'rhoncus': 0.0011325086406217544,
          'sociis': 0.17006523976545684,
          'mattis': 0.5729820294923982,
          'sapien': 0.28353421766534903,
          'fusce': 0.7309835972663288,
          'accumsan': 0.27656933036192566,
          'auctor': 0.900714370189774,
        }.lock,
      ),
      (
        i: <String, double>{
          'montes': 0.5434197252275138,
          'auctor': 0.7022364234769424,
          'sagittis': 0.18997445255962575,
          'pellentesque': 0.49845289023784667,
          'mi': 0.8478585077741791,
          'porttitor': 0.19123275950738672,
          'ligula': 0.32327648095655614,
          'venenatis': 0.6797730895234612,
          'turpis': 0.5930120167466278,
        }.lock,
      ),
      (
        i: <String, double>{
          'proin': 0.5709388443952187,
          'ut': 0.5955217397210419,
          'pharetra': 0.90418149139647,
          'iaculis': 0.36531786548484935,
          'justo': 0.8026496876837512,
        }.lock,
      ),
      (
        i: <String, double>{
          'mattis': 0.7526065390162173,
          'gravida': 0.831320100296263,
          'dapibus': 0.9866252578724578,
          'potenti': 0.4514914547647271,
          'dis': 0.4846198433627771,
        }.lock,
      ),
      (i: <String, double>{}.lock),
      (
        i: <String, double>{
          'massa': 0.12448139831313387,
          'cursus': 0.9170643690538229,
          'justo': 0.7152111562812652,
          'condimentum': 0.6141136359200696,
        }.lock,
      ),
      (
        i: <String, double>{
          'libero': 0.6031415843456708,
          'dignissim': 0.6800661287651949,
          'cursus': 0.4420241186284197,
        }.lock,
      ),
      (
        i: <String, double>{
          'at': 0.2869478188373542,
          'parturient': 0.7591019840461448,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery70.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery70.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query71', () async {
    final datas = <Query71Args>[
      (i: <String, bool>{}.lock),
      (i: <String, bool>{'amet': false, 'a': false}.lock),
      (
        i: <String, bool>{
          'duis': true,
          'amet': true,
          'facilisis': false,
          'fusce': false,
          'porta': true,
          'mus': false,
          'purus': true,
        }.lock,
      ),
      (
        i: <String, bool>{
          'molestie': false,
          'interdum': true,
          'ultrices': true,
          'lacus': false,
        }.lock,
      ),
      (
        i: <String, bool>{
          'nullam': false,
          'a': true,
          'cursus': true,
          'pulvinar': true,
          'montes': true,
          'a': true,
          'ultrices': true,
          'eget': false,
        }.lock,
      ),
      (
        i: <String, bool>{
          'venenatis': true,
          'tellus': true,
          'tristique': false,
          'facilisi': false,
          'suspendisse': false,
          'elit': false,
        }.lock,
      ),
      (
        i: <String, bool>{
          'mauris': false,
          'etiam': false,
          'purus': false,
          'leo': true,
        }.lock,
      ),
      (
        i: <String, bool>{
          'curabitur': false,
          'curabitur': true,
          'id': true,
          'ornare': true,
          'netus': true,
        }.lock,
      ),
      (
        i: <String, bool>{
          'fames': false,
          'dictumst': true,
          'non': false,
          'facilisi': false,
        }.lock,
      ),
      (
        i: <String, bool>{
          'dolor': false,
          'lorem': false,
          'quisque': false,
          'tincidunt': false,
          'eget': true,
          'felis': false,
          'dictum': true,
          'consequat': true,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery71.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery71.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query72', () async {
    final datas = <Query72Args>[
      (
        i: <String, int>{
          'quisque': 436616,
          'volutpat': 276726,
          'bibendum': 544213,
          'scelerisque': 199271,
          'dui': 696798,
        }.lock,
      ),
      (
        i: <String, int>{
          'sapien': 424565,
          'integer': 243856,
          'aliquet': 352752,
          'magna': 951499,
          'commodo': 958797,
          'tortor': 192946,
          'viverra': 131397,
        }.lock,
      ),
      (
        i: <String, int>{
          'placerat': 311453,
          'diam': 386104,
          'pharetra': 589117,
          'habitant': 390300,
          'lacinia': 997697,
          'sociis': 213539,
        }.lock,
      ),
      (
        i: <String, int>{
          'maecenas': 531612,
          'egestas': 659115,
          'nunc': 582953,
          'adipiscing': 337329,
        }.lock,
      ),
      (
        i: <String, int>{
          'eros': 108856,
          'quis': 725231,
          'leo': 853198,
          'bibendum': 234390,
          'malesuada': 543355,
          'scelerisque': 743407,
          'vivamus': 484179,
          'fermentum': 455849,
        }.lock,
      ),
      (i: <String, int>{'ullamcorper': 838395, 'purus': 826377}.lock),
      (i: <String, int>{}.lock),
      (
        i: <String, int>{
          'parturient': 419707,
          'quam': 563225,
          'fames': 740973,
        }.lock,
      ),
      (i: <String, int>{}.lock),
      (i: <String, int>{'enim': 852062, 'pretium': 242867}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery72.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery72.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query73', () async {
    final datas = <Query73Args>[
      (
        i: <String, Uint8ListWithEquality>{
          'lorem': Uint8ListWithEquality.fromList([
            69,
            87,
            235,
            197,
            64,
            188,
            117,
            81,
            30,
            6,
          ]),
          'nascetur': Uint8ListWithEquality.fromList([
            35,
            108,
            57,
            12,
            203,
            80,
            187,
            45,
            179,
            116,
          ]),
          'leo': Uint8ListWithEquality.fromList([
            97,
            51,
            100,
            35,
            137,
            35,
            199,
            4,
            59,
            204,
          ]),
          'feugiat': Uint8ListWithEquality.fromList([
            119,
            239,
            63,
            182,
            213,
            6,
            70,
            106,
            117,
            206,
          ]),
          'lacus': Uint8ListWithEquality.fromList([
            250,
            198,
            109,
            17,
            48,
            198,
            9,
            195,
            22,
            246,
          ]),
          'varius': Uint8ListWithEquality.fromList([
            221,
            224,
            155,
            204,
            88,
            66,
            95,
            52,
            6,
            174,
          ]),
          'est': Uint8ListWithEquality.fromList([
            43,
            89,
            129,
            35,
            167,
            195,
            81,
            77,
            1,
            115,
          ]),
        }.lock,
      ),
      (i: <String, Uint8ListWithEquality>{}.lock),
      (
        i: <String, Uint8ListWithEquality>{
          'turpis': Uint8ListWithEquality.fromList([
            211,
            117,
            68,
            191,
            99,
            66,
            94,
            220,
            174,
            173,
          ]),
          'quam': Uint8ListWithEquality.fromList([
            21,
            121,
            20,
            54,
            77,
            24,
            254,
            128,
            132,
            196,
          ]),
          'sapien': Uint8ListWithEquality.fromList([
            67,
            198,
            93,
            115,
            50,
            195,
            203,
            98,
            140,
            83,
          ]),
          'dignissim': Uint8ListWithEquality.fromList([
            129,
            182,
            236,
            105,
            54,
            51,
            154,
            168,
            6,
            125,
          ]),
          'amet': Uint8ListWithEquality.fromList([
            245,
            176,
            221,
            43,
            107,
            86,
            38,
            102,
            233,
            185,
          ]),
          'dolor': Uint8ListWithEquality.fromList([
            188,
            209,
            150,
            15,
            101,
            86,
            105,
            224,
            156,
            188,
          ]),
          'duis': Uint8ListWithEquality.fromList([
            60,
            161,
            242,
            183,
            29,
            70,
            207,
            29,
            13,
            220,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'consequat': Uint8ListWithEquality.fromList([
            233,
            13,
            8,
            69,
            56,
            107,
            22,
            148,
            120,
            44,
          ]),
          'arcu': Uint8ListWithEquality.fromList([
            56,
            220,
            35,
            183,
            49,
            76,
            104,
            247,
            144,
            173,
          ]),
          'sollicitudin': Uint8ListWithEquality.fromList([
            61,
            186,
            187,
            226,
            253,
            145,
            214,
            5,
            42,
            235,
          ]),
          'laoreet': Uint8ListWithEquality.fromList([
            187,
            19,
            173,
            143,
            194,
            118,
            22,
            22,
            117,
            245,
          ]),
          'cras': Uint8ListWithEquality.fromList([
            67,
            1,
            109,
            66,
            43,
            215,
            253,
            139,
            21,
            112,
          ]),
          'eget': Uint8ListWithEquality.fromList([
            107,
            232,
            5,
            67,
            211,
            174,
            84,
            102,
            160,
            163,
          ]),
          'dapibus': Uint8ListWithEquality.fromList([
            65,
            251,
            177,
            181,
            87,
            122,
            70,
            143,
            120,
            45,
          ]),
          'pulvinar': Uint8ListWithEquality.fromList([
            108,
            111,
            38,
            221,
            11,
            224,
            200,
            14,
            253,
            62,
          ]),
          'molestie': Uint8ListWithEquality.fromList([
            234,
            154,
            215,
            242,
            26,
            106,
            140,
            231,
            209,
            176,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'sagittis': Uint8ListWithEquality.fromList([
            231,
            197,
            225,
            202,
            157,
            167,
            230,
            240,
            12,
            219,
          ]),
          'et': Uint8ListWithEquality.fromList([
            47,
            32,
            194,
            237,
            217,
            50,
            185,
            194,
            243,
            161,
          ]),
          'habitant': Uint8ListWithEquality.fromList([
            190,
            86,
            254,
            2,
            197,
            91,
            28,
            83,
            97,
            254,
          ]),
          'ipsum': Uint8ListWithEquality.fromList([
            143,
            153,
            102,
            102,
            51,
            141,
            88,
            14,
            225,
            137,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'sapien': Uint8ListWithEquality.fromList([
            247,
            137,
            82,
            237,
            56,
            154,
            29,
            55,
            61,
            138,
          ]),
          'purus': Uint8ListWithEquality.fromList([
            161,
            178,
            185,
            19,
            106,
            158,
            7,
            181,
            214,
            87,
          ]),
          'scelerisque': Uint8ListWithEquality.fromList([
            4,
            15,
            98,
            63,
            122,
            107,
            204,
            146,
            145,
            252,
          ]),
          'placerat': Uint8ListWithEquality.fromList([
            153,
            242,
            71,
            25,
            3,
            46,
            242,
            234,
            52,
            71,
          ]),
          'posuere': Uint8ListWithEquality.fromList([
            100,
            235,
            70,
            88,
            111,
            43,
            122,
            47,
            27,
            44,
          ]),
          'adipiscing': Uint8ListWithEquality.fromList([
            122,
            24,
            67,
            49,
            26,
            42,
            136,
            0,
            190,
            204,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'tempus': Uint8ListWithEquality.fromList([
            166,
            9,
            101,
            83,
            160,
            58,
            149,
            30,
            254,
            60,
          ]),
          'nunc': Uint8ListWithEquality.fromList([
            82,
            70,
            245,
            21,
            98,
            10,
            127,
            128,
            91,
            225,
          ]),
          'est': Uint8ListWithEquality.fromList([
            16,
            88,
            181,
            59,
            44,
            182,
            72,
            226,
            85,
            109,
          ]),
          'rhoncus': Uint8ListWithEquality.fromList([
            118,
            19,
            166,
            67,
            134,
            44,
            141,
            125,
            191,
            39,
          ]),
          'arcu': Uint8ListWithEquality.fromList([
            107,
            223,
            8,
            164,
            112,
            165,
            152,
            106,
            193,
            47,
          ]),
          'fermentum': Uint8ListWithEquality.fromList([
            168,
            64,
            57,
            125,
            27,
            201,
            114,
            228,
            165,
            116,
          ]),
          'erat': Uint8ListWithEquality.fromList([
            33,
            190,
            79,
            158,
            237,
            61,
            27,
            88,
            36,
            232,
          ]),
          'dolor': Uint8ListWithEquality.fromList([
            244,
            55,
            153,
            89,
            35,
            119,
            160,
            43,
            97,
            1,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'aenean': Uint8ListWithEquality.fromList([
            25,
            151,
            155,
            137,
            58,
            250,
            109,
            18,
            224,
            205,
          ]),
          'sagittis': Uint8ListWithEquality.fromList([
            181,
            236,
            51,
            123,
            26,
            173,
            75,
            220,
            206,
            110,
          ]),
          'facilisis': Uint8ListWithEquality.fromList([
            244,
            113,
            198,
            46,
            172,
            233,
            171,
            121,
            123,
            169,
          ]),
          'eget': Uint8ListWithEquality.fromList([
            196,
            18,
            88,
            220,
            78,
            174,
            86,
            202,
            208,
            77,
          ]),
          'fames': Uint8ListWithEquality.fromList([
            146,
            4,
            71,
            219,
            127,
            101,
            101,
            52,
            174,
            103,
          ]),
          'integer': Uint8ListWithEquality.fromList([
            249,
            55,
            134,
            66,
            116,
            142,
            199,
            207,
            107,
            87,
          ]),
          'quisque': Uint8ListWithEquality.fromList([
            183,
            114,
            90,
            174,
            70,
            245,
            198,
            226,
            195,
            104,
          ]),
          'lacinia': Uint8ListWithEquality.fromList([
            230,
            17,
            18,
            70,
            8,
            192,
            172,
            85,
            229,
            231,
          ]),
          'venenatis': Uint8ListWithEquality.fromList([
            112,
            78,
            212,
            197,
            241,
            170,
            3,
            147,
            15,
            179,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'iaculis': Uint8ListWithEquality.fromList([
            219,
            125,
            155,
            91,
            245,
            113,
            106,
            232,
            100,
            120,
          ]),
          'tincidunt': Uint8ListWithEquality.fromList([
            100,
            210,
            110,
            17,
            140,
            191,
            28,
            48,
            148,
            91,
          ]),
          'sagittis': Uint8ListWithEquality.fromList([
            241,
            95,
            151,
            195,
            22,
            78,
            243,
            82,
            39,
            119,
          ]),
          'varius': Uint8ListWithEquality.fromList([
            127,
            114,
            154,
            91,
            154,
            24,
            158,
            107,
            72,
            23,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'quam': Uint8ListWithEquality.fromList([
            113,
            65,
            241,
            236,
            148,
            123,
            162,
            218,
            162,
            98,
          ]),
          'elementum': Uint8ListWithEquality.fromList([
            61,
            1,
            50,
            114,
            203,
            79,
            163,
            252,
            26,
            68,
          ]),
          'tortor': Uint8ListWithEquality.fromList([
            99,
            95,
            95,
            179,
            213,
            169,
            115,
            82,
            250,
            3,
          ]),
          'ac': Uint8ListWithEquality.fromList([
            203,
            230,
            64,
            219,
            2,
            149,
            171,
            252,
            33,
            27,
          ]),
          'massa': Uint8ListWithEquality.fromList([
            13,
            97,
            109,
            91,
            184,
            167,
            95,
            37,
            84,
            53,
          ]),
          'venenatis': Uint8ListWithEquality.fromList([
            150,
            32,
            112,
            18,
            108,
            87,
            33,
            66,
            67,
            106,
          ]),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery73.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery73.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query74', () async {
    final datas = <Query74Args>[
      (
        i: <String, TasksId>{
          'platea': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'mi': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'ultricies': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'massa': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'lorem': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'dui': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'lobortis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nam': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'habitant': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'sit': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'eu': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'vel': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tortor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'natoque': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nisl': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'non': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'lorem': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'at': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'vitae': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tempor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'elit': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'amet': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'aliquet': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'posuere': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nullam': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'eget': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'fermentum': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'laoreet': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'parturient': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dolor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'justo': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'fusce': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'laoreet': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'hendrerit': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'eget': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'molestie': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nam': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'volutpat': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'facilisis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'ridiculus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'praesent': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'donec': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nec': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'magna': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'mus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'eros': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tempus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'justo': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'aenean': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'habitasse': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'pellentesque': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'velit': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'ipsum': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'ridiculus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tempor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'ante': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'gravida': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'proin': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'proin': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery74.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery74.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query75', () async {
    final datas = <Query75Args>[
      (
        i: <String, dynamic>{
          'convallis': true,
          'aliquet': 254754,
          'tortor': 0.5247932689661745,
          'posuere': 33437,
          'placerat': true,
          'potenti': 0.417986315213862,
          'malesuada': 'blandit',
          'nulla': 699150,
          'euismod': true,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'ullamcorper': 0.6791345270147461,
          'eleifend': 941527,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'lacinia': 'volutpat',
          'ornare': true,
          'amet': false,
          'sociis': 'dictum',
          'pellentesque': true,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'varius': 638978,
          'mollis': 955930,
          'erat': false,
          'suspendisse': 'sociis',
          'magnis': 'urna',
          'condimentum': true,
        }.lock,
      ),
      (i: <String, dynamic>{'sed': 'aliquet'}.lock),
      (
        i: <String, dynamic>{
          'ornare': 207982,
          'sociis': false,
          'tempus': 0.6621433653756589,
          'enim': true,
          'est': 0.107747752943391,
          'vivamus': 'commodo',
          'nullam': 0.20928926558233008,
          'netus': 'diam',
          'libero': 395481,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'quisque': 620983,
          'adipiscing': true,
          'adipiscing': 0.45036342262346896,
          'commodo': 349570,
          'nulla': false,
          'elit': true,
          'potenti': false,
          'pharetra': 0.7360348841082518,
          'quam': 'neque',
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'sagittis': 26153,
          'justo': false,
          'eleifend': 806145,
          'nibh': 0.2113770757768717,
          'tortor': 514161,
          'pulvinar': 'ultricies',
          'malesuada': 0.33503075000966653,
          'bibendum': 500035,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'est': true,
          'auctor': 'vivamus',
          'maecenas': 'id',
          'euismod': false,
          'aliquam': 'dapibus',
          'fermentum': false,
          'sit': false,
          'a': 374692,
          'dictum': false,
        }.lock,
      ),
      (i: <String, dynamic>{}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery75.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery75.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query76', () async {
    final datas = <Query76Args>[
      (
        i: <String, void>{
          'quam': null,
          'urna': null,
          'fermentum': null,
          'velit': null,
        }.lock,
      ),
      (i: <String, void>{}.lock),
      (i: <String, void>{'ut': null}.lock),
      (i: <String, void>{'sagittis': null}.lock),
      (
        i: <String, void>{
          'odio': null,
          'ac': null,
          'magna': null,
          'lectus': null,
          'dis': null,
          'vulputate': null,
          'vestibulum': null,
        }.lock,
      ),
      (
        i: <String, void>{
          'platea': null,
          'euismod': null,
          'ligula': null,
          'et': null,
          'ullamcorper': null,
          'facilisi': null,
        }.lock,
      ),
      (i: <String, void>{'ligula': null}.lock),
      (i: <String, void>{'odio': null, 'hac': null, 'vel': null}.lock),
      (
        i: <String, void>{
          'dapibus': null,
          'dignissim': null,
          'leo': null,
          'magnis': null,
          'mollis': null,
          'nullam': null,
        }.lock,
      ),
      (i: <String, void>{'quam': null, 'nullam': null}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery76.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery76.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query77', () async {
    final datas = <Query77Args>[
      (i: <String, $HiLiteral>{'habitasse': $HiLiteral()}.lock),
      (
        i: <String, $HiLiteral>{
          'quam': $HiLiteral(),
          'rhoncus': $HiLiteral(),
          'sociis': $HiLiteral(),
          'venenatis': $HiLiteral(),
          'duis': $HiLiteral(),
          'iaculis': $HiLiteral(),
        }.lock,
      ),
      (
        i: <String, $HiLiteral>{
          'blandit': $HiLiteral(),
          'diam': $HiLiteral(),
          'iaculis': $HiLiteral(),
          'lorem': $HiLiteral(),
          'congue': $HiLiteral(),
          'hac': $HiLiteral(),
          'dis': $HiLiteral(),
        }.lock,
      ),
      (
        i: <String, $HiLiteral>{
          'mauris': $HiLiteral(),
          'et': $HiLiteral(),
        }.lock,
      ),
      (i: <String, $HiLiteral>{'quis': $HiLiteral()}.lock),
      (
        i: <String, $HiLiteral>{
          'vestibulum': $HiLiteral(),
          'interdum': $HiLiteral(),
          'id': $HiLiteral(),
        }.lock,
      ),
      (
        i: <String, $HiLiteral>{
          'pretium': $HiLiteral(),
          'pretium': $HiLiteral(),
          'mus': $HiLiteral(),
          'felis': $HiLiteral(),
          'gravida': $HiLiteral(),
          'et': $HiLiteral(),
          'id': $HiLiteral(),
          'egestas': $HiLiteral(),
          'elementum': $HiLiteral(),
        }.lock,
      ),
      (i: <String, $HiLiteral>{'eu': $HiLiteral()}.lock),
      (
        i: <String, $HiLiteral>{
          'luctus': $HiLiteral(),
          'sem': $HiLiteral(),
          'euismod': $HiLiteral(),
          'montes': $HiLiteral(),
          'felis': $HiLiteral(),
          'nulla': $HiLiteral(),
          'lorem': $HiLiteral(),
          'integer': $HiLiteral(),
        }.lock,
      ),
      (
        i: <String, $HiLiteral>{
          'amet': $HiLiteral(),
          'eros': $HiLiteral(),
          'interdum': $HiLiteral(),
          'sit': $HiLiteral(),
          'arcu': $HiLiteral(),
          'praesent': $HiLiteral(),
          'pharetra': $HiLiteral(),
          'turpis': $HiLiteral(),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery77.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery77.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query78', () async {
    final datas = <Query78Args>[
      (
        i: <String, $1Literal>{
          'suspendisse': $1Literal(),
          'quis': $1Literal(),
          'nam': $1Literal(),
          'a': $1Literal(),
          'fringilla': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal>{
          'dapibus': $1Literal(),
          'lacinia': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal>{
          'molestie': $1Literal(),
          'iaculis': $1Literal(),
          'penatibus': $1Literal(),
          'semper': $1Literal(),
          'egestas': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal>{
          'malesuada': $1Literal(),
          'amet': $1Literal(),
          'amet': $1Literal(),
          'dictum': $1Literal(),
          'turpis': $1Literal(),
          'varius': $1Literal(),
          'dictum': $1Literal(),
          'non': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal>{
          'viverra': $1Literal(),
          'massa': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal>{
          'neque': $1Literal(),
          'malesuada': $1Literal(),
          'maecenas': $1Literal(),
          'habitasse': $1Literal(),
          'sapien': $1Literal(),
          'libero': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal>{
          'cras': $1Literal(),
          'phasellus': $1Literal(),
          'ante': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal>{
          'tempor': $1Literal(),
          'posuere': $1Literal(),
          'venenatis': $1Literal(),
          'purus': $1Literal(),
          'ligula': $1Literal(),
        }.lock,
      ),
      (i: <String, $1Literal>{'rhoncus': $1Literal()}.lock),
      (
        i: <String, $1Literal>{
          'id': $1Literal(),
          'velit': $1Literal(),
          'scelerisque': $1Literal(),
          'eu': $1Literal(),
          'scelerisque': $1Literal(),
          'integer': $1Literal(),
          'nullam': $1Literal(),
          'aenean': $1Literal(),
          'libero': $1Literal(),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery78.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery78.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query79', () async {
    final datas = <Query79Args>[
      (
        i: <String, $TrueLiteral>{
          'nisl': $TrueLiteral(),
          'fermentum': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral>{
          'ultrices': $TrueLiteral(),
          'dapibus': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral>{
          'odio': $TrueLiteral(),
          'convallis': $TrueLiteral(),
          'integer': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral>{
          'praesent': $TrueLiteral(),
          'lacus': $TrueLiteral(),
          'rhoncus': $TrueLiteral(),
          'pretium': $TrueLiteral(),
          'dui': $TrueLiteral(),
          'enim': $TrueLiteral(),
          'ante': $TrueLiteral(),
          'ornare': $TrueLiteral(),
          'iaculis': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral>{
          'suscipit': $TrueLiteral(),
          'iaculis': $TrueLiteral(),
          'odio': $TrueLiteral(),
          'in': $TrueLiteral(),
          'pulvinar': $TrueLiteral(),
          'vestibulum': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral>{
          'ornare': $TrueLiteral(),
          'dictum': $TrueLiteral(),
          'viverra': $TrueLiteral(),
          'et': $TrueLiteral(),
          'venenatis': $TrueLiteral(),
          'nibh': $TrueLiteral(),
          'pretium': $TrueLiteral(),
          'parturient': $TrueLiteral(),
          'vestibulum': $TrueLiteral(),
        }.lock,
      ),
      (i: <String, $TrueLiteral>{'pellentesque': $TrueLiteral()}.lock),
      (
        i: <String, $TrueLiteral>{
          'mus': $TrueLiteral(),
          'pulvinar': $TrueLiteral(),
          'magnis': $TrueLiteral(),
          'praesent': $TrueLiteral(),
          'nullam': $TrueLiteral(),
        }.lock,
      ),
      (i: <String, $TrueLiteral>{}.lock),
      (i: <String, $TrueLiteral>{}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery79.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery79.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query81', () async {
    final datas = <Query81Args>[
      (
        i: <String, String?>{
          'interdum': null,
          'pretium': 'nunc',
          'condimentum': 'imperdiet',
          'est': null,
          'sollicitudin': 'quam',
          'metus': null,
          'arcu': 'vivamus',
          'integer': null,
          'lectus': null,
        }.lock,
      ),
      (i: <String, String?>{'eu': 'rhoncus'}.lock),
      (
        i: <String, String?>{
          'vestibulum': null,
          'maecenas': 'hac',
          'posuere': null,
          'nam': 'nec',
          'nisi': 'netus',
          'cum': 'ipsum',
          'sagittis': 'sodales',
        }.lock,
      ),
      (i: <String, String?>{}.lock),
      (
        i: <String, String?>{
          'elementum': null,
          'mi': 'fringilla',
          'integer': 'habitant',
          'senectus': null,
          'dictum': 'ullamcorper',
          'quam': 'imperdiet',
        }.lock,
      ),
      (
        i: <String, String?>{
          'faucibus': null,
          'amet': 'mollis',
          'dui': 'volutpat',
          'adipiscing': null,
          'phasellus': null,
          'integer': 'morbi',
          'senectus': 'auctor',
          'elit': 'ridiculus',
        }.lock,
      ),
      (
        i: <String, String?>{
          'dis': 'dictum',
          'blandit': 'porta',
          'adipiscing': 'facilisis',
        }.lock,
      ),
      (
        i: <String, String?>{
          'iaculis': null,
          'porta': null,
          'elementum': null,
          'adipiscing': 'a',
          'elementum': 'egestas',
          'sodales': null,
          'proin': null,
        }.lock,
      ),
      (i: <String, String?>{'arcu': null}.lock),
      (
        i: <String, String?>{
          'dis': 'laoreet',
          'habitasse': 'sollicitudin',
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery81.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery81.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query82', () async {
    final datas = <Query82Args>[
      (
        i: <String, double?>{
          'natoque': 0.806424721046625,
          'eros': 0.8277683684115064,
        }.lock,
      ),
      (i: <String, double?>{'quisque': 0.9749267412271962}.lock),
      (
        i: <String, double?>{
          'mattis': 0.6141680094837594,
          'dapibus': 0.4597051113013715,
          'quis': 0.2716894993647483,
        }.lock,
      ),
      (
        i: <String, double?>{
          'vel': 0.8255756358519799,
          'enim': 0.9145875651625801,
          'vel': 0.4203880031797582,
          'pulvinar': null,
          'non': 0.18797962250910272,
          'vulputate': null,
        }.lock,
      ),
      (i: <String, double?>{}.lock),
      (
        i: <String, double?>{
          'urna': null,
          'adipiscing': null,
          'neque': null,
          'dignissim': null,
          'ullamcorper': null,
          'potenti': 0.7918701754607009,
          'sem': null,
          'ac': null,
        }.lock,
      ),
      (
        i: <String, double?>{
          'platea': 0.14640893367822794,
          'mauris': 0.518621051188365,
          'turpis': 0.988336651203142,
          'netus': 0.8704236673183265,
          'nibh': 0.6819673979744518,
          'sapien': null,
          'curabitur': 0.07710169727476912,
          'vestibulum': 0.40315446743804595,
          'auctor': 0.3943601891502466,
        }.lock,
      ),
      (
        i: <String, double?>{
          'laoreet': 0.6648534529387315,
          'venenatis': null,
          'elit': null,
          'eros': null,
        }.lock,
      ),
      (i: <String, double?>{}.lock),
      (i: <String, double?>{'augue': null}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery82.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery82.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query83', () async {
    final datas = <Query83Args>[
      (i: <String, bool?>{}.lock),
      (i: <String, bool?>{'amet': false, 'mus': null, 'gravida': null}.lock),
      (
        i: <String, bool?>{
          'quis': null,
          'justo': null,
          'interdum': null,
          'etiam': null,
        }.lock,
      ),
      (
        i: <String, bool?>{
          'penatibus': null,
          'platea': null,
          'nisl': null,
          'vitae': false,
        }.lock,
      ),
      (i: <String, bool?>{'quam': true, 'sagittis': true}.lock),
      (
        i: <String, bool?>{
          'scelerisque': null,
          'dis': null,
          'habitasse': false,
          'vitae': null,
        }.lock,
      ),
      (i: <String, bool?>{}.lock),
      (
        i: <String, bool?>{
          'erat': true,
          'lorem': true,
          'quis': null,
          'platea': false,
          'feugiat': null,
          'mi': null,
          'felis': null,
          'penatibus': false,
          'bibendum': false,
        }.lock,
      ),
      (i: <String, bool?>{'dolor': null, 'rhoncus': null}.lock),
      (
        i: <String, bool?>{
          'justo': true,
          'montes': true,
          'metus': false,
          'mus': false,
          'cras': true,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery83.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery83.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query84', () async {
    final datas = <Query84Args>[
      (i: <String, int?>{'tincidunt': 96144, 'magna': 136536}.lock),
      (i: <String, int?>{'rhoncus': null, 'magnis': null}.lock),
      (
        i: <String, int?>{
          'sed': 920996,
          'feugiat': null,
          'pharetra': null,
          'pretium': null,
        }.lock,
      ),
      (
        i: <String, int?>{
          'maecenas': null,
          'praesent': null,
          'consequat': 513402,
        }.lock,
      ),
      (
        i: <String, int?>{
          'eros': 881559,
          'nullam': 845506,
          'eleifend': null,
          'ut': null,
          'erat': 345990,
          'auctor': null,
          'laoreet': null,
        }.lock,
      ),
      (i: <String, int?>{'pellentesque': 232649}.lock),
      (i: <String, int?>{}.lock),
      (i: <String, int?>{'scelerisque': 746996}.lock),
      (
        i: <String, int?>{
          'potenti': 989219,
          'metus': 75427,
          'sit': null,
          'integer': null,
          'lacus': 954433,
          'turpis': null,
          'fringilla': null,
          'sapien': 495107,
          'posuere': 718775,
        }.lock,
      ),
      (
        i: <String, int?>{
          'etiam': null,
          'imperdiet': 530121,
          'mauris': 384996,
          'aliquam': null,
          'vivamus': null,
          'vitae': null,
          'aenean': 37970,
          'elementum': 221694,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery84.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery84.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query85', () async {
    final datas = <Query85Args>[
      (i: <String, Uint8ListWithEquality?>{'aliquam': null}.lock),
      (
        i: <String, Uint8ListWithEquality?>{
          'laoreet': null,
          'etiam': null,
          'lobortis': null,
          'tellus': null,
          'urna': null,
          'mus': Uint8ListWithEquality.fromList([
            191,
            63,
            34,
            235,
            214,
            101,
            226,
            35,
            112,
            191,
          ]),
          'adipiscing': null,
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'elit': null,
          'risus': Uint8ListWithEquality.fromList([
            240,
            181,
            226,
            35,
            110,
            37,
            38,
            34,
            82,
            91,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'libero': null,
          'blandit': Uint8ListWithEquality.fromList([
            219,
            73,
            120,
            134,
            26,
            194,
            236,
            187,
            42,
            224,
          ]),
          'orci': null,
          'feugiat': Uint8ListWithEquality.fromList([
            44,
            85,
            120,
            176,
            203,
            116,
            166,
            43,
            32,
            97,
          ]),
          'dapibus': null,
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'id': null,
          'eget': Uint8ListWithEquality.fromList([
            13,
            127,
            185,
            39,
            198,
            226,
            0,
            127,
            249,
            197,
          ]),
          'magnis': null,
          'vivamus': Uint8ListWithEquality.fromList([
            189,
            97,
            93,
            15,
            89,
            107,
            24,
            252,
            42,
            154,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'tortor': null,
          'eget': null,
          'sodales': Uint8ListWithEquality.fromList([
            222,
            254,
            51,
            80,
            62,
            196,
            218,
            234,
            108,
            64,
          ]),
          'magnis': null,
          'molestie': null,
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'volutpat': Uint8ListWithEquality.fromList([
            201,
            149,
            47,
            226,
            231,
            138,
            170,
            118,
            128,
            195,
          ]),
          'morbi': Uint8ListWithEquality.fromList([
            207,
            115,
            142,
            20,
            169,
            87,
            222,
            228,
            238,
            218,
          ]),
          'leo': Uint8ListWithEquality.fromList([
            145,
            139,
            211,
            202,
            224,
            184,
            194,
            39,
            165,
            246,
          ]),
          'fusce': null,
          'risus': null,
          'ante': null,
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'eget': null,
          'porta': null,
          'quam': Uint8ListWithEquality.fromList([
            251,
            66,
            164,
            107,
            221,
            130,
            180,
            24,
            187,
            204,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'facilisi': null,
          'facilisis': Uint8ListWithEquality.fromList([
            84,
            4,
            184,
            228,
            121,
            217,
            170,
            54,
            94,
            84,
          ]),
          'ipsum': null,
          'natoque': Uint8ListWithEquality.fromList([
            138,
            239,
            224,
            237,
            130,
            203,
            50,
            202,
            127,
            236,
          ]),
          'metus': null,
          'vestibulum': Uint8ListWithEquality.fromList([
            71,
            101,
            133,
            101,
            202,
            127,
            77,
            25,
            141,
            167,
          ]),
          'auctor': null,
          'ullamcorper': null,
          'mauris': Uint8ListWithEquality.fromList([
            53,
            175,
            152,
            178,
            150,
            70,
            13,
            7,
            95,
            203,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'tempor': null,
          'tempor': null,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery85.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery85.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query86', () async {
    final datas = <Query86Args>[
      (
        i: <String, TasksId?>{
          'cursus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'morbi': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'lectus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'phasellus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nisi': null,
          'in': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'sit': null,
          'auctor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'porttitor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tellus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tristique': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dapibus': null,
          'congue': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (i: <String, TasksId?>{'fames': null, 'dui': null, 'id': null}.lock),
      (
        i: <String, TasksId?>{
          'eu': null,
          'imperdiet': null,
          'fames': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'commodo': null,
          'adipiscing': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'molestie': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'iaculis': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'pulvinar': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'eleifend': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tempus': null,
          'ullamcorper': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'interdum': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'suspendisse': null,
          'ridiculus': null,
          'in': null,
          'sem': null,
          'faucibus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'lacinia': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'amet': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dolor': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'integer': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dis': null,
          'proin': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'tempus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'laoreet': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'molestie': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'aliquam': null,
          'aenean': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery86.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery86.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query87', () async {
    final datas = <Query87Args>[
      (i: <String, dynamic>{'maecenas': null}.lock),
      (
        i: <String, dynamic>{
          'tortor': null,
          'odio': null,
          'odio': null,
          'aenean': null,
          'nisl': null,
          'metus': null,
          'tempus': true,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'quisque': 883605,
          'ullamcorper': null,
          'laoreet': null,
          'metus': 0.9181132871180999,
          'posuere': true,
          'fermentum': 'potenti',
          'tempus': null,
          'sapien': 'blandit',
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'at': true,
          'dignissim': false,
          'elit': 'integer',
          'nulla': null,
          'sed': null,
          'sodales': null,
          'velit': null,
          'felis': true,
        }.lock,
      ),
      (i: <String, dynamic>{'facilisi': null, 'magnis': null}.lock),
      (i: <String, dynamic>{}.lock),
      (
        i: <String, dynamic>{
          'platea': 'penatibus',
          'nam': null,
          'volutpat': null,
          'bibendum': false,
          'eleifend': 0.6565188822155791,
          'luctus': 616768,
          'velit': 'egestas',
          'nisl': null,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'dapibus': null,
          'porttitor': null,
          'eget': null,
          'diam': null,
          'dictumst': null,
          'volutpat': 0.959319230141624,
          'ligula': null,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'interdum': 'velit',
          'phasellus': null,
          'hendrerit': null,
          'nulla': 'nisi',
          'turpis': null,
          'dictumst': false,
          'vivamus': false,
          'lacinia': null,
          'pulvinar': 'nam',
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'nisi': 548929,
          'facilisi': false,
          'vestibulum': null,
          'placerat': 0.2502391250989673,
          'semper': null,
          'sem': null,
          'lorem': 'porttitor',
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery87.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery87.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query88', () async {
    final datas = <Query88Args>[
      (
        i: <String, $HiLiteral?>{
          'dignissim': $HiLiteral(),
          'dapibus': $HiLiteral(),
          'nibh': $HiLiteral(),
          'nec': $HiLiteral(),
          'integer': $HiLiteral(),
        }.lock,
      ),
      (i: <String, $HiLiteral?>{'faucibus': null, 'sagittis': null}.lock),
      (i: <String, $HiLiteral?>{'nulla': $HiLiteral(), 'nunc': null}.lock),
      (
        i: <String, $HiLiteral?>{
          'posuere': $HiLiteral(),
          'imperdiet': $HiLiteral(),
          'felis': null,
          'congue': $HiLiteral(),
          'massa': null,
          'eu': $HiLiteral(),
        }.lock,
      ),
      (
        i: <String, $HiLiteral?>{
          'iaculis': $HiLiteral(),
          'faucibus': null,
          'tristique': $HiLiteral(),
          'massa': $HiLiteral(),
          'fusce': $HiLiteral(),
          'egestas': $HiLiteral(),
          'parturient': null,
        }.lock,
      ),
      (i: <String, $HiLiteral?>{'malesuada': $HiLiteral()}.lock),
      (i: <String, $HiLiteral?>{}.lock),
      (
        i: <String, $HiLiteral?>{
          'magna': null,
          'curabitur': null,
          'malesuada': null,
          'neque': $HiLiteral(),
          'diam': null,
          'elementum': null,
          'platea': null,
        }.lock,
      ),
      (i: <String, $HiLiteral?>{}.lock),
      (
        i: <String, $HiLiteral?>{
          'malesuada': $HiLiteral(),
          'porttitor': null,
          'fusce': $HiLiteral(),
          'luctus': $HiLiteral(),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery88.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery88.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query89', () async {
    final datas = <Query89Args>[
      (i: <String, $1Literal?>{}.lock),
      (
        i: <String, $1Literal?>{
          'fringilla': null,
          'condimentum': null,
          'vestibulum': null,
        }.lock,
      ),
      (
        i: <String, $1Literal?>{
          'tempor': $1Literal(),
          'turpis': $1Literal(),
          'orci': $1Literal(),
          'augue': null,
          'phasellus': null,
          'volutpat': $1Literal(),
        }.lock,
      ),
      (i: <String, $1Literal?>{'maecenas': $1Literal(), 'sagittis': null}.lock),
      (i: <String, $1Literal?>{'porttitor': null, 'molestie': null}.lock),
      (
        i: <String, $1Literal?>{
          'ipsum': null,
          'feugiat': $1Literal(),
          'gravida': null,
          'leo': null,
          'sodales': null,
          'semper': null,
          'dictumst': null,
          'tincidunt': null,
          'platea': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal?>{
          'montes': null,
          'amet': $1Literal(),
          'maecenas': $1Literal(),
          'pretium': null,
          'proin': null,
          'luctus': null,
          'mattis': $1Literal(),
        }.lock,
      ),
      (
        i: <String, $1Literal?>{
          'id': $1Literal(),
          'fermentum': $1Literal(),
          'aliquam': $1Literal(),
          'arcu': $1Literal(),
          'sagittis': null,
          'nulla': $1Literal(),
          'nisl': null,
          'lacinia': null,
          'molestie': null,
        }.lock,
      ),
      (
        i: <String, $1Literal?>{
          'suscipit': null,
          'posuere': null,
          'ullamcorper': null,
          'porttitor': null,
          'euismod': $1Literal(),
          'auctor': $1Literal(),
        }.lock,
      ),
      (i: <String, $1Literal?>{'pretium': $1Literal(), 'suscipit': null}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery89.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery89.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query90', () async {
    final datas = <Query90Args>[
      (i: <String, $TrueLiteral?>{}.lock),
      (
        i: <String, $TrueLiteral?>{
          'id': $TrueLiteral(),
          'a': $TrueLiteral(),
          'dictum': $TrueLiteral(),
          'eleifend': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral?>{
          'eros': $TrueLiteral(),
          'nunc': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral?>{
          'nisi': null,
          'semper': $TrueLiteral(),
          'viverra': null,
          'est': null,
        }.lock,
      ),
      (
        i: <String, $TrueLiteral?>{
          'dictumst': $TrueLiteral(),
          'aliquet': $TrueLiteral(),
          'luctus': null,
          'platea': $TrueLiteral(),
          'a': $TrueLiteral(),
        }.lock,
      ),
      (
        i: <String, $TrueLiteral?>{
          'adipiscing': null,
          'cursus': $TrueLiteral(),
          'sapien': $TrueLiteral(),
          'ante': null,
          'ipsum': $TrueLiteral(),
          'libero': $TrueLiteral(),
          'consectetur': $TrueLiteral(),
          'leo': null,
        }.lock,
      ),
      (
        i: <String, $TrueLiteral?>{
          'justo': $TrueLiteral(),
          'quisque': null,
          'in': $TrueLiteral(),
          'posuere': null,
          'eu': $TrueLiteral(),
          'semper': null,
          'dictumst': null,
          'ante': $TrueLiteral(),
          'molestie': null,
        }.lock,
      ),
      (i: <String, $TrueLiteral?>{}.lock),
      (i: <String, $TrueLiteral?>{}.lock),
      (i: <String, $TrueLiteral?>{}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery90.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery90.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query92', () async {
    final datas = <Query92Args>[
      (i: Union2<String, double>.in1('tortor')),
      (i: Union2<String, double>.in1('ullamcorper')),
      (i: Union2<String, double>.in1('leo')),
      (i: Union2<String, double>.in1('duis')),
      (i: Union2<String, double>.in1('scelerisque')),
      (i: Union2<String, double>.in1('id')),
      (i: Union2<String, double>.in1('nisi')),
      (i: Union2<String, double>.in1('mi')),
      (i: Union2<String, double>.in1('metus')),
      (i: Union2<String, double>.in1('ullamcorper')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery92.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery92.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query93', () async {
    final datas = <Query93Args>[
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(false)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery93.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery93.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query94', () async {
    final datas = <Query94Args>[
      (i: Union2<String, bool>.in1('mattis')),
      (i: Union2<String, bool>.in1('laoreet')),
      (i: Union2<String, bool>.in1('ultricies')),
      (i: Union2<String, bool>.in1('fusce')),
      (i: Union2<String, bool>.in1('dapibus')),
      (i: Union2<String, bool>.in1('natoque')),
      (i: Union2<String, bool>.in1('dui')),
      (i: Union2<String, bool>.in1('quis')),
      (i: Union2<String, bool>.in1('tempus')),
      (i: Union2<String, bool>.in1('ipsum')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery94.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery94.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query95', () async {
    final datas = <Query95Args>[
      (i: Union3<String, double, bool>.in1('felis')),
      (i: Union3<String, double, bool>.in2(0.1833926781224373)),
      (i: Union3<String, double, bool>.in2(0.21373407484132467)),
      (i: Union3<String, double, bool>.in2(0.578219082437583)),
      (i: Union3<String, double, bool>.in2(0.06865266083589927)),
      (i: Union3<String, double, bool>.in1('nibh')),
      (i: Union3<String, double, bool>.in1('pharetra')),
      (i: Union3<String, double, bool>.in2(0.9162642795412469)),
      (i: Union3<String, double, bool>.in1('facilisis')),
      (i: Union3<String, double, bool>.in2(0.6203436414441321)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery95.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery95.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query96', () async {
    final datas = <Query96Args>[
      (i: 'amet'),
      (i: 'tellus'),
      (i: null),
      (i: 'sodales'),
      (i: 'sit'),
      (i: 'fusce'),
      (i: null),
      (i: 'dui'),
      (i: 'nullam'),
      (i: 'scelerisque'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery96.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery96.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query97', () async {
    final datas = <Query97Args>[
      (i: Union2<double, bool>.in1(0.47329754616140396)),
      (i: Union2<double, bool>.in1(0.7433598664678938)),
      (i: Union2<double, bool>.in1(0.18827367309810727)),
      (i: Union2<double, bool>.in1(0.9806394531667961)),
      (i: Union2<double, bool>.in1(0.4719672927430659)),
      (i: Union2<double, bool>.in1(0.9814730851049022)),
      (i: Union2<double, bool>.in1(0.8971595812569293)),
      (i: Union2<double, bool>.in1(0.4901156126123489)),
      (i: Union2<double, bool>.in1(0.8506966104419436)),
      (i: Union2<double, bool>.in1(0.9495135086089233)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery97.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery97.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query98', () async {
    final datas = <Query98Args>[
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            31,
            27,
            156,
            244,
            197,
            138,
            115,
            233,
            170,
            222,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            206,
            121,
            105,
            113,
            41,
            86,
            53,
            181,
            189,
            168,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            0,
            137,
            248,
            121,
            140,
            201,
            229,
            18,
            82,
            73,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            230,
            54,
            27,
            116,
            95,
            63,
            206,
            232,
            2,
            105,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            23,
            213,
            52,
            193,
            72,
            17,
            246,
            176,
            53,
            220,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            51,
            77,
            33,
            206,
            39,
            7,
            143,
            34,
            73,
            12,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            250,
            229,
            34,
            237,
            233,
            233,
            155,
            107,
            17,
            45,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            239,
            31,
            1,
            253,
            204,
            221,
            114,
            251,
            174,
            161,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            74,
            247,
            142,
            122,
            28,
            191,
            175,
            53,
            59,
            61,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            27,
            214,
            145,
            56,
            184,
            119,
            163,
            93,
            29,
            4,
          ]),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery98.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery98.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query100', () async {
    final datas = <Query100Args>[
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
      (i: Union2<$YesLiteral, $NoLiteral>.in1($YesLiteral())),
    ];
    for (final data in datas) {
      final serialized = tasksQuery100.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery100.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query101', () async {
    final datas = <Query101Args>[
      (i: Union3<$1Literal, $2Literal, $3Literal>.in1($1Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in1($1Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in2($2Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in2($2Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in2($2Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in1($1Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in2($2Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in1($1Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in2($2Literal())),
      (i: Union3<$1Literal, $2Literal, $3Literal>.in2($2Literal())),
    ];
    for (final data in datas) {
      final serialized = tasksQuery101.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery101.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query102', () async {
    final datas = <Query102Args>[
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in2(
          $UserLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in2(
          $UserLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in2(
          $UserLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in2(
          $UserLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in2(
          $UserLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in1(
          $AdminLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in2(
          $UserLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in1(
          $AdminLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in2(
          $UserLiteral(),
        ),
      ),
      (
        i: Union3<$AdminLiteral, $UserLiteral, $GuestLiteral>.in1(
          $AdminLiteral(),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery102.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery102.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query103', () async {
    final datas = <Query103Args>[
      (i: Union2<int, double>.in1(726895)),
      (i: Union2<int, double>.in1(744113)),
      (i: Union2<int, double>.in1(904454)),
      (i: Union2<int, double>.in1(632606)),
      (i: Union2<int, double>.in1(489238)),
      (i: Union2<int, double>.in1(476876)),
      (i: Union2<int, double>.in1(548533)),
      (i: Union2<int, double>.in1(455342)),
      (i: Union2<int, double>.in1(563012)),
      (i: Union2<int, double>.in1(896583)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery103.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery103.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query104', () async {
    final datas = <Query104Args>[
      (i: Union3<String, double, bool>.in1('ultricies')),
      (i: Union3<String, double, bool>.in2(0.5769491092000282)),
      (i: Union3<String, double, bool>.in1('urna')),
      (i: Union3<String, double, bool>.in2(0.1418161628455319)),
      (i: Union3<String, double, bool>.in2(0.9013769027212121)),
      (i: Union3<String, double, bool>.in1('laoreet')),
      (i: Union3<String, double, bool>.in2(0.7432031000295078)),
      (i: Union3<String, double, bool>.in2(0.275912875506257)),
      (i: Union3<String, double, bool>.in2(0.4183505934848748)),
      (i: Union3<String, double, bool>.in1('hendrerit')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery104.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery104.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query105', () async {
    final datas = <Query105Args>[
      (i: null),
      (i: 'nisi'),
      (i: 0.7347365489990814),
      (i: 606793),
      (i: null),
      (i: null),
      (i: null),
      (i: null),
      (i: null),
      (i: 0.389302418582937),
    ];
    for (final data in datas) {
      final serialized = tasksQuery105.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery105.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query106', () async {
    final datas = <Query106Args>[
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
      (i: Union2<$TrueLiteral, $FalseLiteral>.in1($TrueLiteral())),
    ];
    for (final data in datas) {
      final serialized = tasksQuery106.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery106.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query107', () async {
    final datas = <Query107Args>[
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            49,
            198,
            159,
            43,
            210,
            203,
            243,
            204,
            62,
            174,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            155,
            225,
            13,
            220,
            182,
            36,
            160,
            141,
            3,
            223,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            173,
            147,
            220,
            123,
            91,
            156,
            160,
            120,
            24,
            147,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            17,
            63,
            45,
            22,
            35,
            107,
            104,
            26,
            71,
            56,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            227,
            87,
            67,
            150,
            6,
            193,
            45,
            88,
            99,
            91,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            17,
            141,
            203,
            69,
            92,
            177,
            142,
            152,
            126,
            15,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            155,
            102,
            162,
            0,
            15,
            16,
            253,
            156,
            130,
            170,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            250,
            69,
            166,
            144,
            2,
            182,
            21,
            34,
            50,
            228,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            191,
            113,
            182,
            51,
            48,
            151,
            181,
            62,
            135,
            194,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            251,
            69,
            69,
            218,
            40,
            165,
            24,
            35,
            138,
            217,
          ]),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery107.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery107.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query108', () async {
    final datas = <Query108Args>[
      (i: Union2<String, $SpecialLiteral>.in1('elementum')),
      (i: Union2<String, $SpecialLiteral>.in1('senectus')),
      (i: Union2<String, $SpecialLiteral>.in1('nulla')),
      (i: Union2<String, $SpecialLiteral>.in1('donec')),
      (i: Union2<String, $SpecialLiteral>.in1('enim')),
      (i: Union2<String, $SpecialLiteral>.in1('lacinia')),
      (i: Union2<String, $SpecialLiteral>.in1('ullamcorper')),
      (i: Union2<String, $SpecialLiteral>.in1('urna')),
      (i: Union2<String, $SpecialLiteral>.in1('fusce')),
      (i: Union2<String, $SpecialLiteral>.in1('nisi')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery108.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery108.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query109', () async {
    final datas = <Query109Args>[
      (i: Union2<double, $42Literal>.in1(0.8400713582760969)),
      (i: Union2<double, $42Literal>.in1(0.45181633323328774)),
      (i: Union2<double, $42Literal>.in1(0.011479153466426917)),
      (i: Union2<double, $42Literal>.in1(0.6505614400445116)),
      (i: Union2<double, $42Literal>.in1(0.7396741008308658)),
      (i: Union2<double, $42Literal>.in1(0.3058539966812064)),
      (i: Union2<double, $42Literal>.in1(0.013210367502451081)),
      (i: Union2<double, $42Literal>.in1(0.1574072077480716)),
      (i: Union2<double, $42Literal>.in1(0.9153610235737094)),
      (i: Union2<double, $42Literal>.in1(0.6774137816923965)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery109.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery109.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query110', () async {
    final datas = <Query110Args>[
      (i: Union2<bool, $MixedLiteral>.in1(true)),
      (i: Union2<bool, $MixedLiteral>.in1(true)),
      (i: Union2<bool, $MixedLiteral>.in1(false)),
      (i: Union2<bool, $MixedLiteral>.in1(true)),
      (i: Union2<bool, $MixedLiteral>.in1(false)),
      (i: Union2<bool, $MixedLiteral>.in1(true)),
      (i: Union2<bool, $MixedLiteral>.in1(true)),
      (i: Union2<bool, $MixedLiteral>.in1(true)),
      (i: Union2<bool, $MixedLiteral>.in1(false)),
      (i: Union2<bool, $MixedLiteral>.in1(true)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery110.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery110.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query111', () async {
    final datas = <Query111Args>[
      (i: (age: 0.15158490560847337, name: 'auctor')),
      (i: (age: 0.5001830508612194, name: 'penatibus')),
      (i: (age: 0.41773848039336936, name: 'nam')),
      (i: (age: 0.979057283742179, name: 'sem')),
      (i: (age: 0.8336944529022661, name: 'habitant')),
      (i: (age: 0.14999912590871445, name: 'quam')),
      (i: (age: 0.3664105457845175, name: 'proin')),
      (i: (age: 0.5836726481281375, name: 'dui')),
      (i: (age: 0.1021650139982756, name: 'enim')),
      (i: (age: 0.2874656414217508, name: 'libero')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery111.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery111.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query112', () async {
    final datas = <Query112Args>[
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'nam',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'blandit',
        ),
      ),
      (
        i: (
          completed: true,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'hac',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'vivamus',
        ),
      ),
      (
        i: (
          completed: true,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'penatibus',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'placerat',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'et',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'mollis',
        ),
      ),
      (
        i: (
          completed: true,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'facilisi',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'auctor',
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery112.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery112.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query113', () async {
    final datas = <Query113Args>[
      (
        i: (
          settings: (notifications: true, theme: 'varius'),
          user: (email: 'nunc', name: 'proin'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'dictumst'),
          user: (email: 'nascetur', name: 'nec'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'volutpat'),
          user: (email: 'bibendum', name: 'praesent'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'vel'),
          user: (email: 'auctor', name: 'euismod'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'ipsum'),
          user: (email: 'dignissim', name: 'eu'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'ligula'),
          user: (email: 'justo', name: 'ipsum'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'fusce'),
          user: (email: 'sapien', name: 'tempor'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'velit'),
          user: (email: 'interdum', name: 'tempus'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'lacus'),
          user: (email: 'magna', name: 'semper'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'montes'),
          user: (email: 'mollis', name: 'est'),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery113.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery113.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query114', () async {
    final datas = <Query114Args>[
      (i: (email: Undefined(), name: Undefined(), phone: 'mauris')),
      (i: (email: Defined('aliquam'), name: Undefined(), phone: null)),
      (i: (email: Undefined(), name: Defined('a'), phone: null)),
      (i: (email: Undefined(), name: Undefined(), phone: 'orci')),
      (i: (email: Defined('nibh'), name: Undefined(), phone: 'nullam')),
      (i: (email: Undefined(), name: Undefined(), phone: 'mauris')),
      (i: (email: Undefined(), name: Undefined(), phone: null)),
      (i: (email: Undefined(), name: Defined('placerat'), phone: null)),
      (i: (email: Defined('leo'), name: Undefined(), phone: 'potenti')),
      (i: (email: Defined('non'), name: Undefined(), phone: null)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery114.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery114.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query115', () async {
    final datas = <Query115Args>[
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
          ].lock,
          tags: <String>[
            'scelerisque',
            'lectus',
            'lacus',
            'turpis',
            'ante',
            'sapien',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
          ].lock,
          tags: <String>[
            'habitant',
            'commodo',
            'luctus',
            'nec',
            'turpis',
            'etiam',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
          ].lock,
          tags: <String>[
            'gravida',
            'vulputate',
            'vel',
            'lacus',
            'venenatis',
            'ullamcorper',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
          ].lock,
          tags: <String>[].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
          ].lock,
          tags: <String>[
            'sodales',
            'tellus',
            'dignissim',
            'morbi',
            'lobortis',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
          ].lock,
          tags: <String>[
            'senectus',
            'nascetur',
            'tellus',
            'hac',
            'mauris',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in2(
              $PersonalLiteral(),
            ),
          ].lock,
          tags: <String>[
            'turpis',
            'hac',
            'dui',
            'eros',
            'tellus',
            'ultrices',
            'eleifend',
            'lacinia',
            'aliquet',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
          ].lock,
          tags: <String>['quisque', 'enim'].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
          ].lock,
          tags: <String>[
            'varius',
            'sapien',
            'et',
            'sit',
            'nunc',
            'dolor',
            'eros',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>>[
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
            Union3<$WorkLiteral, $PersonalLiteral, $UrgentLiteral>.in1(
              $WorkLiteral(),
            ),
          ].lock,
          tags: <String>['erat', 'tempor', 'nibh', 'placerat', 'feugiat'].lock,
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery115.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery115.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query116', () async {
    final datas = <Query116Args>[
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in1(
              $TextLiteral(),
            ),
            value: false,
          ),
          metadata: <String, dynamic>{'suspendisse': 'sollicitudin'}.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in1(
              $TextLiteral(),
            ),
            value: 434623,
          ),
          metadata: <String, dynamic>{}.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in2(
              $NumberLiteral(),
            ),
            value: true,
          ),
          metadata: <String, dynamic>{
            'adipiscing': false,
            'phasellus': 0.6530080109202226,
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in2(
              $NumberLiteral(),
            ),
            value: 0.015429574667945256,
          ),
          metadata: <String, dynamic>{
            'amet': 'feugiat',
            'volutpat': 645754,
            'risus': 'ultricies',
            'nascetur': false,
            'rhoncus': 0.6413554284844194,
            'feugiat': 386992,
            'porttitor': 0.8458740244792076,
            'et': 'orci',
            'sodales': 696492,
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in1(
              $TextLiteral(),
            ),
            value: 'at',
          ),
          metadata: <String, dynamic>{
            'placerat': 0.32922449618956995,
            'praesent': 0.16546738847309084,
            'condimentum': 0.1607868938595718,
            'elit': true,
            'nascetur': false,
            'pellentesque': 0.0737639549217124,
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in1(
              $TextLiteral(),
            ),
            value: 141497,
          ),
          metadata: <String, dynamic>{
            'arcu': 'faucibus',
            'habitasse': 384579,
            'imperdiet': 'hac',
            'mattis': 786592,
            'gravida': 744866,
            'ridiculus': 384267,
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in1(
              $TextLiteral(),
            ),
            value: 'senectus',
          ),
          metadata: <String, dynamic>{
            'libero': 'sagittis',
            'interdum': 'parturient',
            'donec': 'dictumst',
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in1(
              $TextLiteral(),
            ),
            value: 944779,
          ),
          metadata: <String, dynamic>{
            'metus': 0.045492019820288165,
            'tellus': false,
            'elementum': 0.3391374987936028,
            'magna': false,
            'dui': false,
            'elit': 'suspendisse',
            'nullam': 'consequat',
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in1(
              $TextLiteral(),
            ),
            value: 0.9350466844942089,
          ),
          metadata: <String, dynamic>{
            'bibendum': 'nibh',
            'varius': 652588,
            'malesuada': false,
            'aliquet': 0.13294237660834785,
            'justo': 'consequat',
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>.in2(
              $NumberLiteral(),
            ),
            value: 0.25284764959784745,
          ),
          metadata: <String, dynamic>{
            'faucibus': 546518,
            'orci': true,
            'pellentesque': 'accumsan',
            'pretium': 'lectus',
            'massa': false,
            'vel': 724200,
            'cras': 506548,
            'euismod': false,
          }.lock,
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery116.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery116.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query117', () async {
    final datas = <Query117Args>[
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'sed', text: 'porttitor', timestamp: 0.9598774580573973),
            (
              author: 'consequat',
              text: 'laoreet',
              timestamp: 0.787979455221311,
            ),
            (author: 'pretium', text: 'iaculis', timestamp: 0.3909070516759211),
            (author: 'morbi', text: 'lacus', timestamp: 0.431175469572588),
            (
              author: 'ipsum',
              text: 'pellentesque',
              timestamp: 0.4539102156717636,
            ),
            (author: 'aenean', text: 'metus', timestamp: 0.466301294613264),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in1(
                $PendingLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'nullam', text: 'nibh', timestamp: 0.7475837378432761),
            (author: 'tempor', text: 'a', timestamp: 0.9348621729701184),
            (
              author: 'placerat',
              text: 'scelerisque',
              timestamp: 0.5702979140271831,
            ),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in2(
                $ApprovedLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'amet', text: 'ornare', timestamp: 0.023142009409485076),
            (
              author: 'bibendum',
              text: 'hendrerit',
              timestamp: 0.014766161737452266,
            ),
            (author: 'sed', text: 'velit', timestamp: 0.6478559444568252),
            (author: 'vitae', text: 'mus', timestamp: 0.036614058140546635),
            (author: 'maecenas', text: 'rhoncus', timestamp: 0.271588948838027),
            (
              author: 'ornare',
              text: 'malesuada',
              timestamp: 0.3383248076215909,
            ),
            (author: 'vitae', text: 'nulla', timestamp: 0.8088688464603281),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in2(
                $ApprovedLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'facilisi', text: 'ligula', timestamp: 0.7449159880297145),
            (author: 'leo', text: 'eu', timestamp: 0.94630715751869),
            (author: 'luctus', text: 'rhoncus', timestamp: 0.7387442807500183),
            (author: 'vitae', text: 'aenean', timestamp: 0.9442370113370514),
            (
              author: 'lobortis',
              text: 'habitant',
              timestamp: 0.3008760433799318,
            ),
          ].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'maecenas',
          )),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in2(
                $ApprovedLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (
              author: 'consequat',
              text: 'risus',
              timestamp: 0.013222463724638533,
            ),
            (author: 'metus', text: 'montes', timestamp: 0.4015877105105118),
            (
              author: 'mollis',
              text: 'vulputate',
              timestamp: 0.22598621399122376,
            ),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in2(
                $ApprovedLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'potenti', text: 'nullam', timestamp: 0.683024308225014),
          ].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'arcu',
          )),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in1(
                $PendingLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'fusce', text: 'aenean', timestamp: 0.8863369064168443),
            (
              author: 'pellentesque',
              text: 'faucibus',
              timestamp: 0.2220245646088287,
            ),
            (author: 'a', text: 'ipsum', timestamp: 0.5776454360285213),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in2(
                $ApprovedLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'ligula', text: 'hac', timestamp: 0.49757842266945085),
            (
              author: 'dictumst',
              text: 'sapien',
              timestamp: 0.11383082285627932,
            ),
            (author: 'massa', text: 'viverra', timestamp: 0.6758753678879083),
            (
              author: 'bibendum',
              text: 'nullam',
              timestamp: 0.24029052275816787,
            ),
            (author: 'ligula', text: 'blandit', timestamp: 0.8147939233853461),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in1(
                $PendingLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'felis', text: 'euismod', timestamp: 0.917573784525945),
            (author: 'semper', text: 'accumsan', timestamp: 0.5253172241885546),
            (author: 'lectus', text: 'duis', timestamp: 0.7348392756319834),
            (author: 'sociis', text: 'pharetra', timestamp: 0.2650769199661305),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in1(
                $PendingLiteral(),
              ),
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'et', text: 'feugiat', timestamp: 0.9208849806369259),
            (author: 'velit', text: 'urna', timestamp: 0.18499515294180058),
            (author: 'felis', text: 'fringilla', timestamp: 0.2144341863541871),
            (author: 'enim', text: 'habitant', timestamp: 0.5529830428626006),
            (author: 'dictum', text: 'pretium', timestamp: 0.4517183506647089),
            (
              author: 'scelerisque',
              text: 'ante',
              timestamp: 0.24897876405212815,
            ),
          ].lock,
          reviewer: Undefined(),
          status:
              Union3<$PendingLiteral, $ApprovedLiteral, $RejectedLiteral>.in2(
                $ApprovedLiteral(),
              ),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery117.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery117.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query118', () async {
    final datas = <Query118Args>[
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'mattis': Union3<String, double, bool>.in1('ridiculus'),
            'elementum': Union3<String, double, bool>.in2(0.09228592398858626),
            'facilisi': Union3<String, double, bool>.in2(0.33889062490478106),
            'ultrices': Union3<String, double, bool>.in2(0.5272944049264859),
            'dolor': Union3<String, double, bool>.in1('ultrices'),
            'mattis': Union3<String, double, bool>.in1('praesent'),
            'aliquet': Union3<String, double, bool>.in2(0.9755900213670085),
            'nullam': Union3<String, double, bool>.in2(0.06143991982426078),
            'tortor': Union3<String, double, bool>.in2(0.2830389926587039),
          }.lock,
          fallback: (enabled: false, value: true),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'nunc': Union3<String, double, bool>.in2(0.8348663819333039),
            'dolor': Union3<String, double, bool>.in1('urna'),
            'enim': Union3<String, double, bool>.in2(0.06248916022709683),
          }.lock,
          fallback: (enabled: true, value: 98442),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'maecenas': Union3<String, double, bool>.in2(0.8883368589775281),
            'aliquam': Union3<String, double, bool>.in1('proin'),
            'purus': Union3<String, double, bool>.in1('dictumst'),
            'aenean': Union3<String, double, bool>.in1('fringilla'),
            'a': Union3<String, double, bool>.in1('luctus'),
            'cras': Union3<String, double, bool>.in1('lorem'),
            'dapibus': Union3<String, double, bool>.in2(0.8422354016108645),
          }.lock,
          fallback: (enabled: true, value: 0.18031024410290086),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'porttitor': Union3<String, double, bool>.in1('duis'),
            'varius': Union3<String, double, bool>.in2(0.7680663999672),
            'et': Union3<String, double, bool>.in1('ridiculus'),
            'est': Union3<String, double, bool>.in1('urna'),
            'nibh': Union3<String, double, bool>.in1('elementum'),
            'nunc': Union3<String, double, bool>.in1('metus'),
            'sed': Union3<String, double, bool>.in1('adipiscing'),
            'velit': Union3<String, double, bool>.in1('eget'),
            'egestas': Union3<String, double, bool>.in1('purus'),
          }.lock,
          fallback: (enabled: true, value: 928036),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'id': Union3<String, double, bool>.in2(0.6371763972925255),
            'proin': Union3<String, double, bool>.in2(0.7966497269366691),
            'laoreet': Union3<String, double, bool>.in1('aliquet'),
            'nam': Union3<String, double, bool>.in1('cursus'),
          }.lock,
          fallback: (enabled: false, value: 'vivamus'),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'nisi': Union3<String, double, bool>.in2(0.6615380634986968),
            'laoreet': Union3<String, double, bool>.in1('cum'),
            'turpis': Union3<String, double, bool>.in1('elementum'),
            'mollis': Union3<String, double, bool>.in2(0.10208448193146091),
            'condimentum': Union3<String, double, bool>.in1('quam'),
            'ultricies': Union3<String, double, bool>.in1('facilisi'),
            'convallis': Union3<String, double, bool>.in2(0.8684568174461258),
            'hac': Union3<String, double, bool>.in1('montes'),
          }.lock,
          fallback: (enabled: false, value: 0.7180173717874954),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'laoreet': Union3<String, double, bool>.in1('luctus'),
            'ultrices': Union3<String, double, bool>.in1('scelerisque'),
            'tortor': Union3<String, double, bool>.in2(0.8715529770943545),
            'quis': Union3<String, double, bool>.in2(0.4121873309799532),
            'ornare': Union3<String, double, bool>.in1('ultricies'),
            'etiam': Union3<String, double, bool>.in1('dictum'),
            'montes': Union3<String, double, bool>.in2(0.9642176233195542),
            'sociis': Union3<String, double, bool>.in2(0.8009421887851066),
          }.lock,
          fallback: (enabled: true, value: 0.5777806706846238),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{}.lock,
          fallback: (enabled: true, value: false),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{}.lock,
          fallback: (enabled: true, value: false),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'dis': Union3<String, double, bool>.in1('sem'),
          }.lock,
          fallback: (enabled: false, value: 'quisque'),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery118.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery118.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query119', () async {
    final datas = <Query119Args>[
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in1((content: 'bibendum', type: $TextLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in1((content: 'maecenas', type: $TextLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in1((content: 'cum', type: $TextLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in1((content: 'dolor', type: $TextLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in2((content: 0.6050787412044734, type: $NumberLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in2((content: 0.9809083565026487, type: $NumberLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in1((content: 'fames', type: $TextLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in1((content: 'lacinia', type: $TextLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in1((content: 'erat', type: $TextLiteral())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $TextLiteral type}),
                ({double content, $NumberLiteral type}),
                ({bool content, $BooleanLiteral type})
              >.in2((content: 0.4548619098333153, type: $NumberLiteral())),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery119.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery119.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query120', () async {
    final datas = <Query120Args>[
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'quis',
                      metadata: <String, dynamic>{
                        'enim': 'molestie',
                        'integer': 'magnis',
                        'placerat': 0.07905323256583574,
                        'in': true,
                      }.lock,
                      name: 'dignissim',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'eros',
                      metadata: <String, dynamic>{
                        'est': false,
                        'montes': 'eleifend',
                        'eget': 'habitasse',
                        'tellus': 0.11549182786126522,
                        'mi': 0.3790427017786666,
                      }.lock,
                      name: 'sociis',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'aenean',
                      metadata: <String, dynamic>{
                        'pellentesque': false,
                        'mus': 328104,
                      }.lock,
                      name: 'risus',
                      price: null,
                      quantity: Undefined(),
                    ),
                  ]
                  .lock,
          total: 0.4193273051376776,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'molestie',
                      metadata: <String, dynamic>{
                        'accumsan': 'magna',
                        'amet': true,
                        'turpis': 'pharetra',
                        'varius': 0.29544830458893745,
                        'euismod': 0.01520368670726846,
                        'suspendisse': 0.92867374452166,
                        'nisl': 534892,
                      }.lock,
                      name: 'mauris',
                      price: null,
                      quantity: Defined(0.6975920298127025),
                    ),
                    (
                      id: 'commodo',
                      metadata: <String, dynamic>{
                        'facilisis': false,
                        'pharetra': 'aliquam',
                        'aliquet': 590588,
                        'bibendum': true,
                      }.lock,
                      name: 'habitasse',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'turpis',
                      metadata: <String, dynamic>{}.lock,
                      name: 'platea',
                      price: 0.8581874601159882,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'tristique',
                      metadata: <String, dynamic>{
                        'sociis': 0.7555880143759794,
                        'posuere': 'natoque',
                        'justo': 975088,
                        'urna': true,
                        'pharetra': true,
                        'maecenas': 45336,
                      }.lock,
                      name: 'hac',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'nisl',
                      metadata: <String, dynamic>{
                        'urna': 0.7287160924652084,
                        'habitant': 0.4608509496209108,
                        'condimentum': 'tellus',
                        'erat': false,
                        'mus': 'fusce',
                        'egestas': 583664,
                      }.lock,
                      name: 'sagittis',
                      price: 0.49316308719836244,
                      quantity: Defined(0.09782230811983506),
                    ),
                    (
                      id: 'est',
                      metadata: <String, dynamic>{
                        'elementum': 0.6994351099756968,
                        'euismod': 'non',
                        'nullam': 0.3738758831463972,
                      }.lock,
                      name: 'vivamus',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'sapien',
                      metadata: <String, dynamic>{
                        'lectus': 0.7903080950811255,
                        'penatibus': 633356,
                        'at': 0.6353180534821757,
                      }.lock,
                      name: 'erat',
                      price: null,
                      quantity: Undefined(),
                    ),
                  ]
                  .lock,
          total: 0.2832104108559236,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'volutpat',
                      metadata: <String, dynamic>{}.lock,
                      name: 'dolor',
                      price: 0.5055366311376892,
                      quantity: Defined(0.6167881093005463),
                    ),
                    (
                      id: 'porta',
                      metadata: <String, dynamic>{
                        'arcu': 0.9951227543481369,
                        'dictumst': 'pulvinar',
                        'fermentum': true,
                        'pharetra': 28909,
                        'et': false,
                        'habitasse': 0.6128811691842795,
                      }.lock,
                      name: 'curabitur',
                      price: 0.4453724133571504,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'tortor',
                      metadata: <String, dynamic>{'aliquam': 'sapien'}.lock,
                      name: 'aliquam',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'senectus',
                      metadata: <String, dynamic>{}.lock,
                      name: 'a',
                      price: 0.8529713511357054,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'nam',
                      metadata: <String, dynamic>{
                        'pretium': false,
                        'urna': false,
                        'enim': 214045,
                        'est': 0.13368281197853016,
                      }.lock,
                      name: 'mattis',
                      price: 0.0439691270336281,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'viverra',
                      metadata: <String, dynamic>{
                        'iaculis': 285865,
                        'pretium': 231347,
                        'tincidunt': 'sodales',
                        'malesuada': 0.82869697181092,
                        'eros': false,
                        'ipsum': 14629,
                        'iaculis': 'lectus',
                      }.lock,
                      name: 'eu',
                      price: null,
                      quantity: Defined(0.949534614422545),
                    ),
                    (
                      id: 'arcu',
                      metadata: <String, dynamic>{
                        'quisque': 0.49783744635070315,
                        'faucibus': 0.5705969519233107,
                        'faucibus': 305934,
                        'vivamus': 'facilisi',
                        'sed': 'mus',
                      }.lock,
                      name: 'enim',
                      price: 0.6057521992378062,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'nisl',
                      metadata: <String, dynamic>{
                        'pretium': 732936,
                        'vivamus': 'tortor',
                      }.lock,
                      name: 'nisi',
                      price: null,
                      quantity: Defined(0.4654735924866905),
                    ),
                  ]
                  .lock,
          total: 0.020915251916340805,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'malesuada',
                      metadata: <String, dynamic>{
                        'vitae': false,
                        'proin': 0.2205020678785229,
                        'feugiat': false,
                        'diam': false,
                        'natoque': false,
                        'nascetur': 713950,
                      }.lock,
                      name: 'condimentum',
                      price: 0.4153475100443861,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'venenatis',
                      metadata: <String, dynamic>{}.lock,
                      name: 'at',
                      price: 0.9685207799744929,
                      quantity: Defined(0.27775629581432426),
                    ),
                    (
                      id: 'posuere',
                      metadata: <String, dynamic>{
                        'neque': false,
                        'quisque': 0.9828529646125284,
                        'sapien': 0.18041052871262053,
                        'velit': 'ligula',
                      }.lock,
                      name: 'odio',
                      price: null,
                      quantity: Defined(0.5057529830015821),
                    ),
                  ]
                  .lock,
          total: 0.09537309981377451,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'viverra',
                      metadata: <String, dynamic>{}.lock,
                      name: 'turpis',
                      price: 0.4235725478644604,
                      quantity: Defined(0.6620027106713331),
                    ),
                  ]
                  .lock,
          total: 0.2035550871274694,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'sollicitudin',
                      metadata: <String, dynamic>{}.lock,
                      name: 'a',
                      price: null,
                      quantity: Defined(0.11231286793657713),
                    ),
                    (
                      id: 'mi',
                      metadata: <String, dynamic>{
                        'eros': 0.9236843468956375,
                        'dignissim': 819637,
                        'molestie': 'nisl',
                        'consequat': 0.5908066220886582,
                        'eleifend': false,
                        'fusce': true,
                        'eros': 0.716750996510367,
                        'ornare': 297711,
                        'nisi': 154149,
                      }.lock,
                      name: 'vel',
                      price: 0.154667563014669,
                      quantity: Defined(0.6975114004214846),
                    ),
                  ]
                  .lock,
          total: 0.48752649166426665,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'dignissim',
                      metadata: <String, dynamic>{
                        'maecenas': 'dui',
                        'condimentum': 0.39898036398502745,
                        'nisi': 0.8956810853207008,
                        'ante': 107277,
                      }.lock,
                      name: 'in',
                      price: 0.754667845129468,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'magna',
                      metadata: <String, dynamic>{
                        'commodo': 349942,
                        'eleifend': true,
                        'quisque': 258303,
                        'nec': 'laoreet',
                        'mattis': 2708,
                        'vulputate': 0.5675137220393658,
                        'tortor': 931189,
                      }.lock,
                      name: 'nisi',
                      price: 0.9994752508731487,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'fringilla',
                      metadata: <String, dynamic>{
                        'vitae': 0.15395029606436694,
                        'ligula': 0.4580932196266394,
                        'sit': false,
                        'sollicitudin': false,
                        'sociis': 'aenean',
                        'lorem': false,
                        'tristique': 'mi',
                        'dui': 0.16409930703369702,
                        'odio': true,
                      }.lock,
                      name: 'maecenas',
                      price: 0.9515916987314181,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'porttitor',
                      metadata: <String, dynamic>{
                        'dictumst': 'donec',
                        'tortor': 122529,
                        'cursus': 'sed',
                        'praesent': false,
                      }.lock,
                      name: 'molestie',
                      price: 0.12947940969390714,
                      quantity: Defined(0.10993041266314008),
                    ),
                    (
                      id: 'porttitor',
                      metadata: <String, dynamic>{}.lock,
                      name: 'posuere',
                      price: null,
                      quantity: Defined(0.7861512841477044),
                    ),
                    (
                      id: 'potenti',
                      metadata: <String, dynamic>{
                        'feugiat': false,
                        'habitant': false,
                        'mus': 'non',
                      }.lock,
                      name: 'vulputate',
                      price: null,
                      quantity: Undefined(),
                    ),
                  ]
                  .lock,
          total: 0.7623405052557196,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'bibendum',
                      metadata: <String, dynamic>{
                        'elit': 0.034318213920125684,
                      }.lock,
                      name: 'molestie',
                      price: 0.9644408190875347,
                      quantity: Defined(0.04930076930315197),
                    ),
                  ]
                  .lock,
          total: 0.06550500069414633,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'iaculis',
                      metadata: <String, dynamic>{
                        'felis': 247040,
                        'arcu': 'mattis',
                        'turpis': 'donec',
                        'vitae': 'dapibus',
                      }.lock,
                      name: 'vel',
                      price: 0.09110430925251023,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'ultrices',
                      metadata: <String, dynamic>{
                        'gravida': 257157,
                        'ut': 0.24064231639838773,
                        'diam': false,
                        'a': 0.9044519734363161,
                        'libero': 'orci',
                        'adipiscing': 12337,
                        'lacus': 952702,
                        'tincidunt': 0.7939847231141685,
                        'curabitur': true,
                      }.lock,
                      name: 'montes',
                      price: 0.9434229997579922,
                      quantity: Defined(0.31510313647246235),
                    ),
                  ]
                  .lock,
          total: 0.48655097999112285,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[]
                  .lock,
          total: 0.7757481847762768,
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery120.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery120.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query121', () async {
    final datas = <Query121Args>[
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('varius'),
                                id: 'ipsum',
                                likes: 0.84333016020825,
                                tags: <String>['fusce', 'id'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('arcu'),
                                id: 'porta',
                                likes: 0.9550518467461491,
                                tags: <String>[
                                  'consequat',
                                  'sem',
                                  'risus',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'eleifend': Union3<String, double, bool>.in2(
                          0.2847159618100298,
                        ),
                        'magna': Union3<String, double, bool>.in2(
                          0.0005180836159619506,
                        ),
                        'neque': Union3<String, double, bool>.in1('vulputate'),
                        'velit': Union3<String, double, bool>.in1('sit'),
                        'tincidunt': Union3<String, double, bool>.in2(
                          0.7029841745336836,
                        ),
                        'vulputate': Union3<String, double, bool>.in2(
                          0.719391791855744,
                        ),
                        'velit': Union3<String, double, bool>.in1('non'),
                      }.lock,
                      profile: (avatar: Defined('lorem'), name: 'porttitor'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sed'),
                                id: 'eleifend',
                                likes: 0.9231061139174024,
                                tags: <String>[
                                  'etiam',
                                  'facilisis',
                                  'scelerisque',
                                  'at',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('bibendum'),
                                id: 'ultrices',
                                likes: 0.6344798433624312,
                                tags: <String>[
                                  'augue',
                                  'augue',
                                  'sit',
                                  'gravida',
                                  'amet',
                                  'condimentum',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'feugiat': Union3<String, double, bool>.in2(
                          0.03867926257823129,
                        ),
                        'turpis': Union3<String, double, bool>.in2(
                          0.377820054751166,
                        ),
                        'curabitur': Union3<String, double, bool>.in2(
                          0.7054754784711523,
                        ),
                        'fames': Union3<String, double, bool>.in2(
                          0.5184718751953267,
                        ),
                        'aenean': Union3<String, double, bool>.in1('elementum'),
                        'ultricies': Union3<String, double, bool>.in2(
                          0.4402970534977023,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'elit'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dapibus'),
                                id: 'commodo',
                                likes: 0.3355736182407444,
                                tags: <String>[
                                  'mollis',
                                  'ultrices',
                                  'fames',
                                  'viverra',
                                  'duis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tellus'),
                                id: 'nec',
                                likes: 0.11744122844250438,
                                tags: <String>[
                                  'luctus',
                                  'lacus',
                                  'fringilla',
                                  'mauris',
                                  'nam',
                                  'nunc',
                                  'sapien',
                                  'metus',
                                  'scelerisque',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('venenatis'),
                                id: 'quis',
                                likes: 0.7398515678135354,
                                tags: <String>['a', 'at', 'viverra'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('platea'),
                                id: 'fringilla',
                                likes: 0.969549616152868,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('molestie'),
                                id: 'tristique',
                                likes: 0.30429982705444125,
                                tags: <String>['nascetur'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('amet'),
                                id: 'diam',
                                likes: 0.13314482612615475,
                                tags: <String>[
                                  'integer',
                                  'mollis',
                                  'nulla',
                                  'natoque',
                                  'augue',
                                  'fermentum',
                                  'ullamcorper',
                                  'penatibus',
                                  'ac',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'quam': Union3<String, double, bool>.in2(
                          0.24022970499966656,
                        ),
                        'cursus': Union3<String, double, bool>.in1('ac'),
                        'arcu': Union3<String, double, bool>.in1('velit'),
                        'at': Union3<String, double, bool>.in2(
                          0.9518197935017044,
                        ),
                        'nisl': Union3<String, double, bool>.in1('arcu'),
                        'ipsum': Union3<String, double, bool>.in1('aliquet'),
                        'condimentum': Union3<String, double, bool>.in1('mus'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'dolor'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('bibendum'),
                                id: 'nam',
                                likes: 0.6454840093392066,
                                tags: <String>['varius'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('maecenas'),
                                id: 'tempor',
                                likes: 0.4502098260396674,
                                tags: <String>[
                                  'dictum',
                                  'malesuada',
                                  'ullamcorper',
                                  'mollis',
                                  'diam',
                                  'ullamcorper',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('penatibus'),
                                id: 'libero',
                                likes: 0.6708383275609663,
                                tags: <String>[
                                  'fames',
                                  'porta',
                                  'amet',
                                  'feugiat',
                                  'diam',
                                  'libero',
                                  'porttitor',
                                  'senectus',
                                  'sit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nulla'),
                                id: 'mi',
                                likes: 0.15542133869217234,
                                tags: <String>[
                                  'quisque',
                                  'arcu',
                                  'maecenas',
                                  'porttitor',
                                  'ornare',
                                  'sed',
                                  'at',
                                  'nisi',
                                  'aliquet',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('euismod'),
                                id: 'placerat',
                                likes: 0.27039825718713295,
                                tags: <String>[
                                  'placerat',
                                  'dictum',
                                  'senectus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fusce'),
                                id: 'justo',
                                likes: 0.6838323174965647,
                                tags: <String>['fames', 'imperdiet'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nec'),
                                id: 'blandit',
                                likes: 0.15969377206940105,
                                tags: <String>[
                                  'quisque',
                                  'purus',
                                  'leo',
                                  'a',
                                  'eros',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eros'),
                                id: 'quisque',
                                likes: 0.33659142218565274,
                                tags: <String>[
                                  'habitasse',
                                  'quisque',
                                  'fermentum',
                                  'ridiculus',
                                  'urna',
                                  'nullam',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'malesuada': Union3<String, double, bool>.in1('leo'),
                        'auctor': Union3<String, double, bool>.in1('lacinia'),
                        'imperdiet': Union3<String, double, bool>.in1('ante'),
                        'lacus': Union3<String, double, bool>.in1('neque'),
                        'hendrerit': Union3<String, double, bool>.in2(
                          0.12892811985775177,
                        ),
                      }.lock,
                      profile: (avatar: Defined('eget'), name: 'tempor'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sapien'),
                                id: 'molestie',
                                likes: 0.06205302937910728,
                                tags: <String>[
                                  'interdum',
                                  'aenean',
                                  'ultricies',
                                  'congue',
                                  'ultricies',
                                  'diam',
                                  'euismod',
                                  'eget',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('elit'),
                                id: 'morbi',
                                likes: 0.13383974978518387,
                                tags: <String>[
                                  'aenean',
                                  'viverra',
                                  'feugiat',
                                  'lectus',
                                  'tempus',
                                  'eu',
                                  'quis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nulla'),
                                id: 'mollis',
                                likes: 0.23978435772440254,
                                tags: <String>[
                                  'fermentum',
                                  'mus',
                                  'nullam',
                                  'quam',
                                  'ridiculus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('diam'),
                                id: 'maecenas',
                                likes: 0.738933506212151,
                                tags: <String>[
                                  'habitasse',
                                  'elit',
                                  'integer',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('amet'),
                                id: 'lacus',
                                likes: 0.9832340707712118,
                                tags: <String>[
                                  'cursus',
                                  'quis',
                                  'fermentum',
                                  'dapibus',
                                  'nunc',
                                  'donec',
                                  'habitasse',
                                  'nibh',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'amet': Union3<String, double, bool>.in2(
                          0.9401430225729722,
                        ),
                        'nibh': Union3<String, double, bool>.in1('orci'),
                      }.lock,
                      profile: (avatar: Defined('nec'), name: 'sem'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('libero'),
                                id: 'facilisi',
                                likes: 0.7431366637942989,
                                tags: <String>['sodales', 'eget'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'turpis': Union3<String, double, bool>.in2(
                          0.4784493036783223,
                        ),
                        'facilisis': Union3<String, double, bool>.in1(
                          'ultrices',
                        ),
                        'suspendisse': Union3<String, double, bool>.in1(
                          'etiam',
                        ),
                        'eros': Union3<String, double, bool>.in1('etiam'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'est'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('justo'),
                                id: 'arcu',
                                likes: 0.6085016966600323,
                                tags: <String>['euismod'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vitae'),
                                id: 'magnis',
                                likes: 0.8996332530765514,
                                tags: <String>[
                                  'nullam',
                                  'gravida',
                                  'fermentum',
                                  'eleifend',
                                  'ante',
                                  'hendrerit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eget'),
                                id: 'tincidunt',
                                likes: 0.7672080889510343,
                                tags: <String>[
                                  'massa',
                                  'in',
                                  'scelerisque',
                                  'justo',
                                  'eleifend',
                                  'venenatis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'cras': Union3<String, double, bool>.in1('dictum'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'fermentum'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dapibus'),
                                id: 'adipiscing',
                                likes: 0.28306459447435883,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('morbi'),
                                id: 'nisi',
                                likes: 0.4763606275046459,
                                tags: <String>[
                                  'condimentum',
                                  'nam',
                                  'dapibus',
                                  'faucibus',
                                  'cursus',
                                  'platea',
                                  'imperdiet',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('quisque'),
                                id: 'consectetur',
                                likes: 0.5966199001078127,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('laoreet'),
                                id: 'vestibulum',
                                likes: 0.6282616908261848,
                                tags: <String>[
                                  'laoreet',
                                  'ligula',
                                  'fringilla',
                                  'quis',
                                  'turpis',
                                  'tristique',
                                  'cum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('viverra'),
                                id: 'vivamus',
                                likes: 0.4887919605892498,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquet'),
                                id: 'varius',
                                likes: 0.7486917484509914,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dictum'),
                                id: 'consectetur',
                                likes: 0.3813866225497121,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('diam'),
                                id: 'arcu',
                                likes: 0.4260972405886114,
                                tags: <String>[].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nisl': Union3<String, double, bool>.in2(
                          0.17180225855025943,
                        ),
                        'dictum': Union3<String, double, bool>.in2(
                          0.5338004435362016,
                        ),
                        'dapibus': Union3<String, double, bool>.in2(
                          0.0647263177061499,
                        ),
                        'vulputate': Union3<String, double, bool>.in1(
                          'imperdiet',
                        ),
                        'interdum': Union3<String, double, bool>.in2(
                          0.5514010468229636,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'hac'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tristique'),
                                id: 'dis',
                                likes: 0.9017258926211484,
                                tags: <String>[
                                  'tristique',
                                  'malesuada',
                                  'et',
                                  'lorem',
                                  'arcu',
                                  'convallis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('porttitor'),
                                id: 'tortor',
                                likes: 0.6348967348535406,
                                tags: <String>[
                                  'morbi',
                                  'senectus',
                                  'auctor',
                                  'dis',
                                  'ac',
                                  'venenatis',
                                  'luctus',
                                  'cum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('volutpat'),
                                id: 'ultrices',
                                likes: 0.06220035888774755,
                                tags: <String>[
                                  'habitasse',
                                  'eros',
                                  'lacus',
                                  'ligula',
                                  'semper',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('laoreet'),
                                id: 'felis',
                                likes: 0.7598318692306221,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nisi'),
                                id: 'cum',
                                likes: 0.08543469068723553,
                                tags: <String>[
                                  'nullam',
                                  'amet',
                                  'arcu',
                                  'phasellus',
                                  'parturient',
                                  'blandit',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'mi': Union3<String, double, bool>.in1('tempor'),
                        'cum': Union3<String, double, bool>.in2(
                          0.12320259393625876,
                        ),
                        'aliquet': Union3<String, double, bool>.in1('eu'),
                        'erat': Union3<String, double, bool>.in1('euismod'),
                        'condimentum': Union3<String, double, bool>.in1('cras'),
                        'tristique': Union3<String, double, bool>.in2(
                          0.28084606145977076,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'dolor'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dignissim'),
                                id: 'auctor',
                                likes: 0.0806880075051496,
                                tags: <String>[
                                  'mus',
                                  'eleifend',
                                  'vulputate',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sapien'),
                                id: 'laoreet',
                                likes: 0.02717546913021729,
                                tags: <String>['in'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('malesuada'),
                                id: 'fusce',
                                likes: 0.3649880548101112,
                                tags: <String>[
                                  'ridiculus',
                                  'facilisi',
                                  'faucibus',
                                  'mattis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mattis'),
                                id: 'varius',
                                likes: 0.7855390770720143,
                                tags: <String>[
                                  'ornare',
                                  'libero',
                                  'placerat',
                                  'odio',
                                  'phasellus',
                                  'dapibus',
                                  'vestibulum',
                                  'massa',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('leo'),
                                id: 'id',
                                likes: 0.887274623339789,
                                tags: <String>[
                                  'velit',
                                  'ut',
                                  'vel',
                                  'erat',
                                  'neque',
                                  'sit',
                                  'consequat',
                                  'adipiscing',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nec'),
                                id: 'felis',
                                likes: 0.32696305581130125,
                                tags: <String>[
                                  'varius',
                                  'sit',
                                  'cras',
                                  'enim',
                                  'tincidunt',
                                  'gravida',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nunc'),
                                id: 'ornare',
                                likes: 0.5033810093537898,
                                tags: <String>[
                                  'adipiscing',
                                  'cum',
                                  'lacinia',
                                  'aenean',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'ridiculus': Union3<String, double, bool>.in2(
                          0.39562335752929656,
                        ),
                        'bibendum': Union3<String, double, bool>.in1(
                          'placerat',
                        ),
                        'donec': Union3<String, double, bool>.in1('porttitor'),
                        'a': Union3<String, double, bool>.in1('nulla'),
                        'viverra': Union3<String, double, bool>.in2(
                          0.18442099329481776,
                        ),
                        'purus': Union3<String, double, bool>.in1('enim'),
                        'dapibus': Union3<String, double, bool>.in2(
                          0.27111533085630446,
                        ),
                      }.lock,
                      profile: (avatar: Defined('tristique'), name: 'nisi'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'malesuada': Union3<String, double, bool>.in2(
                          0.4632717174519244,
                        ),
                        'sem': Union3<String, double, bool>.in2(
                          0.13858978476919603,
                        ),
                        'quis': Union3<String, double, bool>.in2(
                          0.4035959039115997,
                        ),
                        'proin': Union3<String, double, bool>.in2(
                          0.9789471871967049,
                        ),
                        'congue': Union3<String, double, bool>.in1('ut'),
                        'magnis': Union3<String, double, bool>.in1('lectus'),
                        'ridiculus': Union3<String, double, bool>.in2(
                          0.17071190786891743,
                        ),
                        'arcu': Union3<String, double, bool>.in2(
                          0.42523681933268165,
                        ),
                        'sed': Union3<String, double, bool>.in2(
                          0.3499317098180734,
                        ),
                      }.lock,
                      profile: (avatar: Defined('quisque'), name: 'aliquam'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquam'),
                                id: 'leo',
                                likes: 0.5460117658651169,
                                tags: <String>['nibh', 'neque'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'risus': Union3<String, double, bool>.in2(
                          0.27498233905522784,
                        ),
                        'nec': Union3<String, double, bool>.in1('ac'),
                        'amet': Union3<String, double, bool>.in2(
                          0.5221749141868155,
                        ),
                        'odio': Union3<String, double, bool>.in2(
                          0.25278028102168115,
                        ),
                        'maecenas': Union3<String, double, bool>.in1('amet'),
                        'nisi': Union3<String, double, bool>.in2(
                          0.06900654524357985,
                        ),
                        'vel': Union3<String, double, bool>.in1('mus'),
                        'quam': Union3<String, double, bool>.in1('blandit'),
                        'rhoncus': Union3<String, double, bool>.in1('erat'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'habitant'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('viverra'),
                                id: 'nisi',
                                likes: 0.7134501368757967,
                                tags: <String>[
                                  'senectus',
                                  'hac',
                                  'vulputate',
                                  'nullam',
                                  'duis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'habitasse': Union3<String, double, bool>.in2(
                          0.8197601975736866,
                        ),
                        'interdum': Union3<String, double, bool>.in1('metus'),
                        'eget': Union3<String, double, bool>.in2(
                          0.05278304565167147,
                        ),
                        'netus': Union3<String, double, bool>.in2(
                          0.9243854084976646,
                        ),
                        'congue': Union3<String, double, bool>.in1(
                          'vestibulum',
                        ),
                        'platea': Union3<String, double, bool>.in1('euismod'),
                        'venenatis': Union3<String, double, bool>.in1('lectus'),
                        'suscipit': Union3<String, double, bool>.in2(
                          0.8595582584296718,
                        ),
                        'lectus': Union3<String, double, bool>.in2(
                          0.13655030218618536,
                        ),
                      }.lock,
                      profile: (avatar: Defined('sagittis'), name: 'vulputate'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ligula'),
                                id: 'rhoncus',
                                likes: 0.16781733476435046,
                                tags: <String>['nibh'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'purus',
                                likes: 0.9337427805706505,
                                tags: <String>[
                                  'fermentum',
                                  'ipsum',
                                  'id',
                                  'orci',
                                  'non',
                                  'varius',
                                  'condimentum',
                                  'nec',
                                  'enim',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sagittis'),
                                id: 'potenti',
                                likes: 0.659491107674816,
                                tags: <String>[
                                  'fusce',
                                  'scelerisque',
                                  'nullam',
                                  'donec',
                                  'volutpat',
                                  'ligula',
                                  'viverra',
                                  'pretium',
                                  'eleifend',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'non': Union3<String, double, bool>.in1('risus'),
                        'turpis': Union3<String, double, bool>.in1('maecenas'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'massa'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'donec',
                                likes: 0.4665362955850668,
                                tags: <String>[
                                  'dapibus',
                                  'donec',
                                  'sollicitudin',
                                  'aenean',
                                  'odio',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('amet'),
                                id: 'tincidunt',
                                likes: 0.21582968938694636,
                                tags: <String>[
                                  'a',
                                  'tempus',
                                  'a',
                                  'in',
                                  'euismod',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'erat': Union3<String, double, bool>.in2(
                          0.274098705316566,
                        ),
                      }.lock,
                      profile: (
                        avatar: Defined('phasellus'),
                        name: 'fringilla',
                      ),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('penatibus'),
                                id: 'lectus',
                                likes: 0.09675438038344342,
                                tags: <String>['pulvinar'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('erat'),
                                id: 'senectus',
                                likes: 0.5899652639770948,
                                tags: <String>[
                                  'hendrerit',
                                  'at',
                                  'consequat',
                                  'placerat',
                                  'vel',
                                  'platea',
                                  'libero',
                                  'vel',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences:
                          <String, Union3<String, double, bool>>{}.lock,
                      profile: (avatar: Undefined(), name: 'consectetur'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('porta'),
                                id: 'blandit',
                                likes: 0.9179631881666511,
                                tags: <String>[
                                  'orci',
                                  'tellus',
                                  'scelerisque',
                                  'dictumst',
                                  'interdum',
                                  'neque',
                                  'parturient',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('praesent'),
                                id: 'mattis',
                                likes: 0.7833059218049716,
                                tags: <String>[
                                  'porttitor',
                                  'cum',
                                  'elit',
                                  'ultrices',
                                  'facilisi',
                                  'massa',
                                  'lectus',
                                  'ipsum',
                                  'fusce',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('rhoncus'),
                                id: 'felis',
                                likes: 0.39870855389267423,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('netus'),
                                id: 'lacus',
                                likes: 0.5074932651351906,
                                tags: <String>[
                                  'aenean',
                                  'elit',
                                  'quis',
                                  'facilisis',
                                  'dapibus',
                                  'nec',
                                  'eros',
                                  'lobortis',
                                  'enim',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'facilisis': Union3<String, double, bool>.in2(
                          0.34794970177750706,
                        ),
                        'luctus': Union3<String, double, bool>.in1('rhoncus'),
                        'suspendisse': Union3<String, double, bool>.in2(
                          0.4190486436017532,
                        ),
                        'sapien': Union3<String, double, bool>.in2(
                          0.9682317392740812,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'ultricies'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'feugiat': Union3<String, double, bool>.in1('libero'),
                        'lorem': Union3<String, double, bool>.in1('ante'),
                        'duis': Union3<String, double, bool>.in2(
                          0.9274956895507417,
                        ),
                        'semper': Union3<String, double, bool>.in2(
                          0.9204412414848588,
                        ),
                        'netus': Union3<String, double, bool>.in2(
                          0.8239324168524024,
                        ),
                      }.lock,
                      profile: (avatar: Defined('turpis'), name: 'convallis'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vivamus'),
                                id: 'sodales',
                                likes: 0.3732569508468814,
                                tags: <String>[
                                  'proin',
                                  'massa',
                                  'tellus',
                                  'pretium',
                                  'nisi',
                                  'non',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dapibus'),
                                id: 'gravida',
                                likes: 0.9698042779000619,
                                tags: <String>[
                                  'cras',
                                  'condimentum',
                                  'ac',
                                  'urna',
                                  'mollis',
                                  'sapien',
                                  'sociis',
                                  'donec',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nulla'),
                                id: 'augue',
                                likes: 0.8147931601084237,
                                tags: <String>['orci', 'blandit'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('interdum'),
                                id: 'cum',
                                likes: 0.9678518540685304,
                                tags: <String>[
                                  'etiam',
                                  'mi',
                                  'ultrices',
                                  'in',
                                  'duis',
                                  'vel',
                                  'dictum',
                                  'aliquam',
                                  'ligula',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'hac': Union3<String, double, bool>.in2(
                          0.5634159742142347,
                        ),
                        'adipiscing': Union3<String, double, bool>.in2(
                          0.5629346831366125,
                        ),
                      }.lock,
                      profile: (avatar: Defined('purus'), name: 'sodales'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('posuere'),
                                id: 'molestie',
                                likes: 0.7388634944964708,
                                tags: <String>['ante'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eleifend'),
                                id: 'dis',
                                likes: 0.6777643715673366,
                                tags: <String>[
                                  'quis',
                                  'nullam',
                                  'ullamcorper',
                                  'porta',
                                  'rhoncus',
                                  'luctus',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'ante': Union3<String, double, bool>.in2(
                          0.40321318369456804,
                        ),
                      }.lock,
                      profile: (avatar: Defined('et'), name: 'sagittis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'dictumst': Union3<String, double, bool>.in2(
                          0.31612093288675647,
                        ),
                        'magnis': Union3<String, double, bool>.in2(
                          0.28411992027344335,
                        ),
                      }.lock,
                      profile: (avatar: Defined('vitae'), name: 'semper'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('egestas'),
                                id: 'urna',
                                likes: 0.4384232255329904,
                                tags: <String>[
                                  'velit',
                                  'habitasse',
                                  'platea',
                                  'pretium',
                                  'nisl',
                                  'arcu',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'mollis': Union3<String, double, bool>.in2(
                          0.003940859978499467,
                        ),
                        'non': Union3<String, double, bool>.in1('donec'),
                        'felis': Union3<String, double, bool>.in1('mattis'),
                      }.lock,
                      profile: (avatar: Defined('laoreet'), name: 'nisl'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('hendrerit'),
                                id: 'dapibus',
                                likes: 0.1521831802913136,
                                tags: <String>[
                                  'nisi',
                                  'cras',
                                  'nibh',
                                  'natoque',
                                  'facilisi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nibh'),
                                id: 'dictumst',
                                likes: 0.2534886367876147,
                                tags: <String>['montes', 'natoque'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('at'),
                                id: 'ultricies',
                                likes: 0.812785438224822,
                                tags: <String>[
                                  'semper',
                                  'cursus',
                                  'felis',
                                  'et',
                                  'sagittis',
                                  'et',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('et'),
                                id: 'augue',
                                likes: 0.20650059091905626,
                                tags: <String>[
                                  'dui',
                                  'integer',
                                  'dapibus',
                                  'mi',
                                  'cursus',
                                  'purus',
                                  'aliquam',
                                  'sociis',
                                  'convallis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'platea': Union3<String, double, bool>.in2(
                          0.492643893362515,
                        ),
                        'eget': Union3<String, double, bool>.in1('penatibus'),
                        'malesuada': Union3<String, double, bool>.in2(
                          0.5369600145188462,
                        ),
                        'sollicitudin': Union3<String, double, bool>.in2(
                          0.9751291579940919,
                        ),
                        'tortor': Union3<String, double, bool>.in1('ultricies'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'curabitur'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dapibus'),
                                id: 'ut',
                                likes: 0.9420021106118146,
                                tags: <String>['fusce'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dapibus'),
                                id: 'venenatis',
                                likes: 0.266356357309674,
                                tags: <String>['ridiculus', 'penatibus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('massa'),
                                id: 'eleifend',
                                likes: 0.47099378364475697,
                                tags: <String>[
                                  'quam',
                                  'nisi',
                                  'accumsan',
                                  'consequat',
                                  'habitasse',
                                  'cras',
                                  'lectus',
                                  'odio',
                                  'purus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nullam'),
                                id: 'sapien',
                                likes: 0.8938019281525018,
                                tags: <String>[
                                  'nullam',
                                  'ligula',
                                  'integer',
                                  'dignissim',
                                  'ante',
                                  'ornare',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'dignissim': Union3<String, double, bool>.in2(
                          0.9809752783747682,
                        ),
                        'commodo': Union3<String, double, bool>.in2(
                          0.07282538564323593,
                        ),
                      }.lock,
                      profile: (avatar: Defined('imperdiet'), name: 'metus'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('cum'),
                                id: 'aliquet',
                                likes: 0.5934244760849158,
                                tags: <String>['maecenas', 'leo'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('suscipit'),
                                id: 'habitasse',
                                likes: 0.0006976939365646029,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('phasellus'),
                                id: 'etiam',
                                likes: 0.5714315070190893,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('erat'),
                                id: 'blandit',
                                likes: 0.8673636470742448,
                                tags: <String>['viverra', 'cras'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('iaculis'),
                                id: 'hendrerit',
                                likes: 0.6119629880618612,
                                tags: <String>[
                                  'cursus',
                                  'metus',
                                  'morbi',
                                  'leo',
                                  'molestie',
                                  'aliquet',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('amet'),
                                id: 'et',
                                likes: 0.44387111162777326,
                                tags: <String>[
                                  'facilisi',
                                  'quis',
                                  'fermentum',
                                  'sit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('porta'),
                                id: 'diam',
                                likes: 0.959499388115635,
                                tags: <String>[
                                  'phasellus',
                                  'suspendisse',
                                  'mattis',
                                  'scelerisque',
                                  'iaculis',
                                  'amet',
                                  'laoreet',
                                  'dictum',
                                  'parturient',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'euismod': Union3<String, double, bool>.in1('aliquam'),
                      }.lock,
                      profile: (avatar: Defined('rhoncus'), name: 'mus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('augue'),
                                id: 'ridiculus',
                                likes: 0.9061131790899121,
                                tags: <String>[
                                  'aliquet',
                                  'faucibus',
                                  'iaculis',
                                  'varius',
                                  'lacinia',
                                  'quis',
                                  'rhoncus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('imperdiet'),
                                id: 'at',
                                likes: 0.14456914367803353,
                                tags: <String>['potenti'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('suspendisse'),
                                id: 'faucibus',
                                likes: 0.005849390531513121,
                                tags: <String>[
                                  'ullamcorper',
                                  'dis',
                                  'hac',
                                  'facilisi',
                                  'mi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vulputate'),
                                id: 'nisl',
                                likes: 0.5627450306256244,
                                tags: <String>[
                                  'velit',
                                  'tristique',
                                  'cum',
                                  'montes',
                                  'quisque',
                                  'lacinia',
                                  'justo',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('leo'),
                                id: 'a',
                                likes: 0.013650113073144121,
                                tags: <String>[
                                  'ligula',
                                  'aenean',
                                  'dictum',
                                  'aenean',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lacus'),
                                id: 'maecenas',
                                likes: 0.3463126053125992,
                                tags: <String>[
                                  'placerat',
                                  'dapibus',
                                  'metus',
                                  'fusce',
                                  'sed',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sem'),
                                id: 'cursus',
                                likes: 0.2984377193173724,
                                tags: <String>['ut'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tellus'),
                                id: 'quam',
                                likes: 0.878220068015827,
                                tags: <String>['id', 'potenti'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sodales': Union3<String, double, bool>.in1('nam'),
                        'vel': Union3<String, double, bool>.in1('eget'),
                        'nascetur': Union3<String, double, bool>.in1('nunc'),
                        'orci': Union3<String, double, bool>.in2(
                          0.3973522326800506,
                        ),
                        'donec': Union3<String, double, bool>.in2(
                          0.1619584250109085,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'venenatis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences:
                          <String, Union3<String, double, bool>>{}.lock,
                      profile: (avatar: Defined('nullam'), name: 'feugiat'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('cum'),
                                id: 'purus',
                                likes: 0.581780118062158,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('suspendisse'),
                                id: 'mus',
                                likes: 0.17139670833405263,
                                tags: <String>[
                                  'aliquam',
                                  'dapibus',
                                  'diam',
                                  'nisl',
                                  'nullam',
                                  'phasellus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('orci'),
                                id: 'in',
                                likes: 0.028099413236465143,
                                tags: <String>[
                                  'consequat',
                                  'morbi',
                                  'pretium',
                                  'viverra',
                                  'pellentesque',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'est': Union3<String, double, bool>.in1('donec'),
                        'viverra': Union3<String, double, bool>.in2(
                          0.4693250782852756,
                        ),
                        'potenti': Union3<String, double, bool>.in1('in'),
                      }.lock,
                      profile: (avatar: Defined('tempus'), name: 'curabitur'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lacus'),
                                id: 'varius',
                                likes: 0.46749029018132937,
                                tags: <String>[
                                  'nunc',
                                  'erat',
                                  'tempus',
                                  'sapien',
                                  'dictum',
                                  'egestas',
                                  'mus',
                                  'magnis',
                                  'nec',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('in'),
                                id: 'purus',
                                likes: 0.7454823113739694,
                                tags: <String>[
                                  'integer',
                                  'dapibus',
                                  'libero',
                                  'condimentum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('pharetra'),
                                id: 'augue',
                                likes: 0.9371869891597016,
                                tags: <String>[
                                  'suscipit',
                                  'dui',
                                  'consectetur',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tellus'),
                                id: 'volutpat',
                                likes: 0.6380342282413454,
                                tags: <String>[
                                  'quis',
                                  'nisl',
                                  'nibh',
                                  'netus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tristique'),
                                id: 'adipiscing',
                                likes: 0.05400429965191744,
                                tags: <String>[
                                  'molestie',
                                  'cursus',
                                  'fermentum',
                                  'nullam',
                                  'tellus',
                                  'lacus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('scelerisque'),
                                id: 'massa',
                                likes: 0.19885508673871344,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mattis'),
                                id: 'lobortis',
                                likes: 0.9289098210160515,
                                tags: <String>['natoque'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nullam'),
                                id: 'massa',
                                likes: 0.7033970495972971,
                                tags: <String>[
                                  'nisl',
                                  'sit',
                                  'eu',
                                  'diam',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('phasellus'),
                                id: 'nisi',
                                likes: 0.4361305229571655,
                                tags: <String>['urna'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'fermentum': Union3<String, double, bool>.in2(
                          0.46243026739809656,
                        ),
                        'amet': Union3<String, double, bool>.in2(
                          0.046324769237231944,
                        ),
                        'penatibus': Union3<String, double, bool>.in2(
                          0.3024120952513438,
                        ),
                        'eleifend': Union3<String, double, bool>.in1('nunc'),
                        'cum': Union3<String, double, bool>.in2(
                          0.46256907226712796,
                        ),
                        'natoque': Union3<String, double, bool>.in2(
                          0.9479421520783765,
                        ),
                        'iaculis': Union3<String, double, bool>.in1('ultrices'),
                        'non': Union3<String, double, bool>.in1('proin'),
                        'ante': Union3<String, double, bool>.in1('lacinia'),
                      }.lock,
                      profile: (avatar: Defined('adipiscing'), name: 'aliquam'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('justo'),
                                id: 'auctor',
                                likes: 0.048028384292311155,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('curabitur'),
                                id: 'et',
                                likes: 0.9060149288977865,
                                tags: <String>[
                                  'erat',
                                  'nulla',
                                  'vivamus',
                                  'netus',
                                  'netus',
                                  'tellus',
                                  'parturient',
                                  'sollicitudin',
                                  'pulvinar',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nec'),
                                id: 'nunc',
                                likes: 0.9766727621356542,
                                tags: <String>[
                                  'platea',
                                  'dictum',
                                  'tincidunt',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('phasellus'),
                                id: 'porta',
                                likes: 0.030091534917223384,
                                tags: <String>[
                                  'vulputate',
                                  'nunc',
                                  'dui',
                                  'porta',
                                  'leo',
                                  'posuere',
                                  'parturient',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('cursus'),
                                id: 'velit',
                                likes: 0.9568917577117354,
                                tags: <String>[
                                  'viverra',
                                  'viverra',
                                  'hac',
                                  'purus',
                                  'pretium',
                                  'elementum',
                                  'vivamus',
                                  'ut',
                                  'dapibus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('diam'),
                                id: 'montes',
                                likes: 0.33516060988636653,
                                tags: <String>[
                                  'egestas',
                                  'pulvinar',
                                  'scelerisque',
                                  'ligula',
                                  'consequat',
                                  'commodo',
                                  'urna',
                                  'eu',
                                  'sociis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitant'),
                                id: 'turpis',
                                likes: 0.9010593403401994,
                                tags: <String>['porta', 'lorem'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences:
                          <String, Union3<String, double, bool>>{}.lock,
                      profile: (avatar: Defined('purus'), name: 'a'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('penatibus'),
                                id: 'mollis',
                                likes: 0.7998572213296439,
                                tags: <String>[
                                  'tortor',
                                  'arcu',
                                  'pretium',
                                  'cursus',
                                  'orci',
                                  'lacinia',
                                  'pellentesque',
                                  'eget',
                                  'nunc',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('porta'),
                                id: 'quam',
                                likes: 0.26374641229741236,
                                tags: <String>[
                                  'pulvinar',
                                  'turpis',
                                  'eu',
                                  'ligula',
                                  'hendrerit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('molestie'),
                                id: 'molestie',
                                likes: 0.4945075264244574,
                                tags: <String>[
                                  'ipsum',
                                  'aenean',
                                  'nec',
                                  'cum',
                                  'leo',
                                  'amet',
                                  'duis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('consequat'),
                                id: 'adipiscing',
                                likes: 0.44487339582268814,
                                tags: <String>['sed'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('suspendisse'),
                                id: 'dapibus',
                                likes: 0.06040807302068507,
                                tags: <String>[
                                  'id',
                                  'neque',
                                  'odio',
                                  'adipiscing',
                                  'nascetur',
                                  'fringilla',
                                  'eros',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('adipiscing'),
                                id: 'malesuada',
                                likes: 0.8987605591825367,
                                tags: <String>[
                                  'dolor',
                                  'praesent',
                                  'egestas',
                                  'sed',
                                  'elementum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('auctor'),
                                id: 'laoreet',
                                likes: 0.24880734463941556,
                                tags: <String>[
                                  'risus',
                                  'nullam',
                                  'etiam',
                                  'sit',
                                  'ultrices',
                                  'lectus',
                                  'ante',
                                  'non',
                                  'pellentesque',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mus'),
                                id: 'nibh',
                                likes: 0.7996072656363712,
                                tags: <String>[
                                  'id',
                                  'porta',
                                  'etiam',
                                  'urna',
                                  'mauris',
                                  'mus',
                                  'amet',
                                  'phasellus',
                                  'nullam',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'vulputate': Union3<String, double, bool>.in2(
                          0.1331140436733107,
                        ),
                        'odio': Union3<String, double, bool>.in2(
                          0.06797479952551244,
                        ),
                      }.lock,
                      profile: (
                        avatar: Defined('adipiscing'),
                        name: 'sollicitudin',
                      ),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('volutpat'),
                                id: 'nibh',
                                likes: 0.2945233885489781,
                                tags: <String>['nam'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('turpis'),
                                id: 'ut',
                                likes: 0.8193042844180074,
                                tags: <String>['arcu'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ultricies'),
                                id: 'ligula',
                                likes: 0.39033459235539525,
                                tags: <String>[
                                  'pellentesque',
                                  'suscipit',
                                  'ultrices',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dapibus'),
                                id: 'sem',
                                likes: 0.74295464497906,
                                tags: <String>[
                                  'nulla',
                                  'pharetra',
                                  'leo',
                                  'arcu',
                                  'nulla',
                                  'bibendum',
                                  'auctor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('condimentum'),
                                id: 'odio',
                                likes: 0.03662889144008752,
                                tags: <String>[
                                  'nam',
                                  'arcu',
                                  'malesuada',
                                  'dis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('morbi'),
                                id: 'fermentum',
                                likes: 0.008961004689861607,
                                tags: <String>['sociis', 'eu', 'sociis'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences:
                          <String, Union3<String, double, bool>>{}.lock,
                      profile: (avatar: Defined('proin'), name: 'sapien'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ultrices'),
                                id: 'vitae',
                                likes: 0.33897254638555707,
                                tags: <String>[
                                  'nunc',
                                  'rhoncus',
                                  'maecenas',
                                  'laoreet',
                                  'tellus',
                                  'amet',
                                  'proin',
                                  'varius',
                                  'natoque',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('donec'),
                                id: 'dictum',
                                likes: 0.7421805358987442,
                                tags: <String>['dignissim', 'gravida'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('risus'),
                                id: 'integer',
                                likes: 0.37569313800952153,
                                tags: <String>[
                                  'feugiat',
                                  'sed',
                                  'blandit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('luctus'),
                                id: 'risus',
                                likes: 0.43411907266462557,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('risus'),
                                id: 'imperdiet',
                                likes: 0.9216110311287982,
                                tags: <String>[
                                  'senectus',
                                  'eleifend',
                                  'eros',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences:
                          <String, Union3<String, double, bool>>{}.lock,
                      profile: (avatar: Undefined(), name: 'tempor'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('risus'),
                                id: 'ligula',
                                likes: 0.49482312706966025,
                                tags: <String>['hendrerit'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('semper'),
                                id: 'hac',
                                likes: 0.9794968407741882,
                                tags: <String>[].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nibh': Union3<String, double, bool>.in2(
                          0.15928127258474456,
                        ),
                        'velit': Union3<String, double, bool>.in1('sociis'),
                        'tortor': Union3<String, double, bool>.in1('ac'),
                        'netus': Union3<String, double, bool>.in2(
                          0.37447203838302345,
                        ),
                        'habitasse': Union3<String, double, bool>.in2(
                          0.09536706143627272,
                        ),
                        'suscipit': Union3<String, double, bool>.in2(
                          0.9863038744042648,
                        ),
                        'augue': Union3<String, double, bool>.in1('libero'),
                      }.lock,
                      profile: (avatar: Defined('dui'), name: 'quisque'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('velit'),
                                id: 'pretium',
                                likes: 0.4493115184493145,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('iaculis'),
                                id: 'augue',
                                likes: 0.1983828911036185,
                                tags: <String>[
                                  'nascetur',
                                  'potenti',
                                  'urna',
                                  'sed',
                                  'sapien',
                                  'gravida',
                                  'hendrerit',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nec': Union3<String, double, bool>.in2(
                          0.3840180203020428,
                        ),
                        'ante': Union3<String, double, bool>.in2(
                          0.875088075567164,
                        ),
                        'enim': Union3<String, double, bool>.in2(
                          0.22692196411227405,
                        ),
                        'placerat': Union3<String, double, bool>.in2(
                          0.05735062206824648,
                        ),
                        'dui': Union3<String, double, bool>.in2(
                          0.4123767493938396,
                        ),
                        'erat': Union3<String, double, bool>.in2(
                          0.5959230701148198,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'mus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('duis'),
                                id: 'tristique',
                                likes: 0.6619282955402048,
                                tags: <String>['ultrices', 'porta', 'sed'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('donec'),
                                id: 'facilisi',
                                likes: 0.1640027224960966,
                                tags: <String>[
                                  'pulvinar',
                                  'scelerisque',
                                  'aliquet',
                                  'velit',
                                  'dignissim',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquam'),
                                id: 'magna',
                                likes: 0.9016802555251815,
                                tags: <String>[
                                  'ornare',
                                  'nisl',
                                  'iaculis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sem'),
                                id: 'urna',
                                likes: 0.09330040876441481,
                                tags: <String>[
                                  'hac',
                                  'est',
                                  'cursus',
                                  'aenean',
                                  'in',
                                  'penatibus',
                                  'dictum',
                                  'vel',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'risus': Union3<String, double, bool>.in1('senectus'),
                        'cras': Union3<String, double, bool>.in2(
                          0.2968555526506179,
                        ),
                        'adipiscing': Union3<String, double, bool>.in2(
                          0.9807089067322499,
                        ),
                        'eleifend': Union3<String, double, bool>.in2(
                          0.45286860232322323,
                        ),
                        'dignissim': Union3<String, double, bool>.in2(
                          0.6141089996864098,
                        ),
                        'phasellus': Union3<String, double, bool>.in2(
                          0.8704856466987746,
                        ),
                        'eget': Union3<String, double, bool>.in2(
                          0.2567829776801007,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'nullam'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vel'),
                                id: 'elementum',
                                likes: 0.9758348279167789,
                                tags: <String>[
                                  'nisl',
                                  'convallis',
                                  'mus',
                                  'nullam',
                                  'ornare',
                                  'vulputate',
                                  'lectus',
                                  'eget',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('venenatis'),
                                id: 'ornare',
                                likes: 0.5501716718712284,
                                tags: <String>[
                                  'euismod',
                                  'blandit',
                                  'risus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitant'),
                                id: 'risus',
                                likes: 0.8005348384834463,
                                tags: <String>[
                                  'senectus',
                                  'justo',
                                  'dictumst',
                                  'sapien',
                                  'sem',
                                  'pellentesque',
                                  'tellus',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'habitasse': Union3<String, double, bool>.in2(
                          0.13221376623009284,
                        ),
                        'blandit': Union3<String, double, bool>.in1(
                          'hendrerit',
                        ),
                        'venenatis': Union3<String, double, bool>.in1(
                          'posuere',
                        ),
                        'facilisis': Union3<String, double, bool>.in1('ante'),
                        'nec': Union3<String, double, bool>.in1('eleifend'),
                        'parturient': Union3<String, double, bool>.in1(
                          'aliquam',
                        ),
                        'id': Union3<String, double, bool>.in1('orci'),
                        'hendrerit': Union3<String, double, bool>.in2(
                          0.9581482501563292,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'elit'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('rhoncus'),
                                id: 'posuere',
                                likes: 0.6760705996014905,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitasse'),
                                id: 'mus',
                                likes: 0.3420314630283313,
                                tags: <String>['malesuada', 'massa'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nisi'),
                                id: 'hendrerit',
                                likes: 0.47908760443787,
                                tags: <String>[
                                  'integer',
                                  'gravida',
                                  'maecenas',
                                  'tincidunt',
                                  'sed',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sapien'),
                                id: 'dictumst',
                                likes: 0.14243155619767633,
                                tags: <String>[
                                  'parturient',
                                  'praesent',
                                  'consectetur',
                                  'at',
                                  'accumsan',
                                  'nec',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('varius'),
                                id: 'ligula',
                                likes: 0.40005139007005175,
                                tags: <String>[
                                  'feugiat',
                                  'sem',
                                  'adipiscing',
                                  'luctus',
                                  'amet',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('cursus'),
                                id: 'penatibus',
                                likes: 0.6806815951017219,
                                tags: <String>[
                                  'fringilla',
                                  'natoque',
                                  'habitasse',
                                  'suspendisse',
                                  'mauris',
                                  'ante',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'mauris': Union3<String, double, bool>.in1('ligula'),
                        'morbi': Union3<String, double, bool>.in1(
                          'sollicitudin',
                        ),
                        'phasellus': Union3<String, double, bool>.in2(
                          0.5497280011872125,
                        ),
                        'nunc': Union3<String, double, bool>.in2(
                          0.8359312480294913,
                        ),
                        'viverra': Union3<String, double, bool>.in2(
                          0.5227957697220534,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'morbi'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'malesuada': Union3<String, double, bool>.in2(
                          0.052073197653336956,
                        ),
                        'platea': Union3<String, double, bool>.in1('cum'),
                        'tellus': Union3<String, double, bool>.in1('fames'),
                        'justo': Union3<String, double, bool>.in1('sapien'),
                        'pellentesque': Union3<String, double, bool>.in1('mi'),
                        'ligula': Union3<String, double, bool>.in1('lorem'),
                        'tortor': Union3<String, double, bool>.in2(
                          0.5561161012429605,
                        ),
                        'ridiculus': Union3<String, double, bool>.in1(
                          'pretium',
                        ),
                      }.lock,
                      profile: (avatar: Defined('penatibus'), name: 'tempus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vulputate'),
                                id: 'vitae',
                                likes: 0.5806384904871735,
                                tags: <String>[
                                  'tellus',
                                  'porta',
                                  'tellus',
                                  'dui',
                                  'tempus',
                                  'pulvinar',
                                  'amet',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('integer'),
                                id: 'dui',
                                likes: 0.7446125041793229,
                                tags: <String>[
                                  'blandit',
                                  'suscipit',
                                  'velit',
                                  'dis',
                                  'mattis',
                                  'convallis',
                                  'ultrices',
                                  'integer',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('elementum'),
                                id: 'euismod',
                                likes: 0.8248590082453389,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('odio'),
                                id: 'turpis',
                                likes: 0.6242436478744053,
                                tags: <String>[
                                  'tristique',
                                  'penatibus',
                                  'enim',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('a'),
                                id: 'pellentesque',
                                likes: 0.520724032753644,
                                tags: <String>['imperdiet', 'luctus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lobortis'),
                                id: 'donec',
                                likes: 0.5447114251840042,
                                tags: <String>[].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'pellentesque': Union3<String, double, bool>.in2(
                          0.5650031726690338,
                        ),
                        'maecenas': Union3<String, double, bool>.in1('dui'),
                        'ligula': Union3<String, double, bool>.in1('nisi'),
                        'ullamcorper': Union3<String, double, bool>.in1('enim'),
                        'aliquet': Union3<String, double, bool>.in2(
                          0.5692760307581924,
                        ),
                        'quisque': Union3<String, double, bool>.in1(
                          'parturient',
                        ),
                        'duis': Union3<String, double, bool>.in2(
                          0.6539815721583742,
                        ),
                        'scelerisque': Union3<String, double, bool>.in2(
                          0.8963728050383366,
                        ),
                        'montes': Union3<String, double, bool>.in1('quam'),
                      }.lock,
                      profile: (avatar: Defined('eleifend'), name: 'orci'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('augue'),
                                id: 'varius',
                                likes: 0.3041808022828446,
                                tags: <String>[
                                  'vestibulum',
                                  'elementum',
                                  'dictumst',
                                  'sapien',
                                  'interdum',
                                  'dapibus',
                                  'nisi',
                                  'vel',
                                  'est',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('at'),
                                id: 'scelerisque',
                                likes: 0.5525965509784592,
                                tags: <String>[
                                  'convallis',
                                  'mi',
                                  'cursus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('euismod'),
                                id: 'facilisi',
                                likes: 0.3829619620082335,
                                tags: <String>[
                                  'tortor',
                                  'egestas',
                                  'vel',
                                  'purus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nulla'),
                                id: 'posuere',
                                likes: 0.6958184477514383,
                                tags: <String>[
                                  'orci',
                                  'semper',
                                  'sed',
                                  'integer',
                                  'senectus',
                                  'lectus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('elit'),
                                id: 'donec',
                                likes: 0.7646341079041235,
                                tags: <String>[
                                  'ante',
                                  'hendrerit',
                                  'amet',
                                  'nascetur',
                                  'dictumst',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('libero'),
                                id: 'consequat',
                                likes: 0.9323041372678804,
                                tags: <String>[
                                  'sollicitudin',
                                  'justo',
                                  'habitasse',
                                  'duis',
                                  'fusce',
                                  'interdum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('porttitor'),
                                id: 'vulputate',
                                likes: 0.022630654936139694,
                                tags: <String>[
                                  'felis',
                                  'ipsum',
                                  'lobortis',
                                  'euismod',
                                  'tristique',
                                  'lacus',
                                  'eget',
                                  'ultricies',
                                  'sociis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'id': Union3<String, double, bool>.in1('sem'),
                        'bibendum': Union3<String, double, bool>.in1('semper'),
                        'cras': Union3<String, double, bool>.in2(
                          0.10271223779848615,
                        ),
                        'semper': Union3<String, double, bool>.in1('nam'),
                        'nascetur': Union3<String, double, bool>.in1(
                          'tincidunt',
                        ),
                        'vivamus': Union3<String, double, bool>.in2(
                          0.7128463267367667,
                        ),
                        'urna': Union3<String, double, bool>.in2(
                          0.34874378150533414,
                        ),
                        'hendrerit': Union3<String, double, bool>.in1('purus'),
                        'aliquet': Union3<String, double, bool>.in2(
                          0.022226996683163414,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'nec'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'consectetur',
                                likes: 0.2510013530006039,
                                tags: <String>[
                                  'mus',
                                  'lorem',
                                  'turpis',
                                  'hendrerit',
                                  'mauris',
                                  'ridiculus',
                                  'pharetra',
                                  'quis',
                                  'nam',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('congue'),
                                id: 'ridiculus',
                                likes: 0.056688546967124775,
                                tags: <String>[
                                  'metus',
                                  'mi',
                                  'non',
                                  'justo',
                                  'penatibus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vulputate'),
                                id: 'massa',
                                likes: 0.3687350641021786,
                                tags: <String>[
                                  'vel',
                                  'fringilla',
                                  'ultricies',
                                  'habitasse',
                                  'porttitor',
                                  'eros',
                                  'suspendisse',
                                  'nullam',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('arcu'),
                                id: 'fermentum',
                                likes: 0.24108533349497563,
                                tags: <String>[
                                  'quam',
                                  'sem',
                                  'et',
                                  'vestibulum',
                                  'nascetur',
                                  'vivamus',
                                  'cras',
                                  'hendrerit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('venenatis'),
                                id: 'vivamus',
                                likes: 0.08247688601410352,
                                tags: <String>['maecenas', 'rhoncus'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sed': Union3<String, double, bool>.in2(
                          0.07968407489979656,
                        ),
                        'suspendisse': Union3<String, double, bool>.in1(
                          'venenatis',
                        ),
                        'ac': Union3<String, double, bool>.in2(
                          0.28004941800428096,
                        ),
                        'platea': Union3<String, double, bool>.in2(
                          0.32302752574137306,
                        ),
                        'blandit': Union3<String, double, bool>.in1('lacinia'),
                        'nec': Union3<String, double, bool>.in2(
                          0.02226257304649304,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'quam'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('hendrerit'),
                                id: 'integer',
                                likes: 0.5308016822488363,
                                tags: <String>[
                                  'pharetra',
                                  'phasellus',
                                  'mattis',
                                  'arcu',
                                  'integer',
                                  'viverra',
                                  'rhoncus',
                                  'nec',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tempor'),
                                id: 'arcu',
                                likes: 0.18779769960747372,
                                tags: <String>[
                                  'a',
                                  'scelerisque',
                                  'dictum',
                                  'tempus',
                                  'justo',
                                  'nisi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ridiculus'),
                                id: 'proin',
                                likes: 0.5879153499092284,
                                tags: <String>[
                                  'risus',
                                  'penatibus',
                                  'pulvinar',
                                  'scelerisque',
                                  'sociis',
                                  'tellus',
                                  'a',
                                  'id',
                                  'egestas',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'erat': Union3<String, double, bool>.in1('ornare'),
                        'nisl': Union3<String, double, bool>.in2(
                          0.7770849786097342,
                        ),
                        'semper': Union3<String, double, bool>.in1('aenean'),
                        'mi': Union3<String, double, bool>.in1('tellus'),
                        'massa': Union3<String, double, bool>.in2(
                          0.7873592843598268,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'imperdiet'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fames'),
                                id: 'diam',
                                likes: 0.13094455160503382,
                                tags: <String>['euismod'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('penatibus'),
                                id: 'et',
                                likes: 0.3558457094391859,
                                tags: <String>[
                                  'nascetur',
                                  'ullamcorper',
                                  'montes',
                                  'sollicitudin',
                                  'erat',
                                  'fames',
                                  'sodales',
                                  'mus',
                                  'velit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fames'),
                                id: 'netus',
                                likes: 0.682089083950974,
                                tags: <String>[
                                  'dignissim',
                                  'dictum',
                                  'sapien',
                                  'convallis',
                                  'et',
                                  'vestibulum',
                                  'dolor',
                                  'mus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lacus'),
                                id: 'auctor',
                                likes: 0.8283350327521362,
                                tags: <String>[
                                  'elementum',
                                  'mattis',
                                  'gravida',
                                  'fringilla',
                                  'blandit',
                                  'blandit',
                                  'phasellus',
                                  'netus',
                                  'rhoncus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('parturient'),
                                id: 'vitae',
                                likes: 0.8274178616805238,
                                tags: <String>[
                                  'bibendum',
                                  'maecenas',
                                  'lorem',
                                  'semper',
                                  'gravida',
                                  'magnis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nisi'),
                                id: 'orci',
                                likes: 0.736912448801785,
                                tags: <String>[
                                  'fermentum',
                                  'vestibulum',
                                  'varius',
                                  'natoque',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('augue'),
                                id: 'montes',
                                likes: 0.5314937191868256,
                                tags: <String>[
                                  'tortor',
                                  'fermentum',
                                  'lacus',
                                  'cum',
                                  'hendrerit',
                                  'nulla',
                                  'feugiat',
                                  'donec',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('adipiscing'),
                                id: 'varius',
                                likes: 0.21382984694958163,
                                tags: <String>['vivamus', 'tristique'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('euismod'),
                                id: 'laoreet',
                                likes: 0.48037525570737893,
                                tags: <String>[
                                  'semper',
                                  'hac',
                                  'senectus',
                                  'massa',
                                  'senectus',
                                  'luctus',
                                  'varius',
                                  'nunc',
                                  'erat',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences:
                          <String, Union3<String, double, bool>>{}.lock,
                      profile: (avatar: Undefined(), name: 'diam'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fringilla'),
                                id: 'leo',
                                likes: 0.21533629321137793,
                                tags: <String>[
                                  'maecenas',
                                  'vestibulum',
                                  'dolor',
                                  'consectetur',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mi'),
                                id: 'cursus',
                                likes: 0.3175242982669776,
                                tags: <String>['pellentesque', 'diam'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'duis',
                                likes: 0.5533633549943754,
                                tags: <String>[
                                  'malesuada',
                                  'maecenas',
                                  'a',
                                  'vivamus',
                                  'eleifend',
                                  'nam',
                                  'felis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sapien'),
                                id: 'lectus',
                                likes: 0.8819985332884493,
                                tags: <String>[
                                  'dapibus',
                                  'montes',
                                  'parturient',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'metus': Union3<String, double, bool>.in2(
                          0.7736215227120228,
                        ),
                        'non': Union3<String, double, bool>.in2(
                          0.07279638142971645,
                        ),
                        'dis': Union3<String, double, bool>.in2(
                          0.42387803125540946,
                        ),
                        'varius': Union3<String, double, bool>.in2(
                          0.1520686106774911,
                        ),
                        'id': Union3<String, double, bool>.in2(
                          0.10311503841524461,
                        ),
                        'quisque': Union3<String, double, bool>.in2(
                          0.7067010738735601,
                        ),
                        'cum': Union3<String, double, bool>.in1('tellus'),
                        'nullam': Union3<String, double, bool>.in2(
                          0.6649802978858323,
                        ),
                        'elit': Union3<String, double, bool>.in2(
                          0.8107690993150688,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'semper'),
                    ),
                  ),
                ]
                .lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery121.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery121.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query122', () async {
    final datas = <Query122Args>[
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{
                  'euismod': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'lobortis': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'natoque': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'lacinia': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'habitant': 'facilisis',
                            'orci': 'varius',
                            'nec': 'at',
                            'netus': 'auctor',
                            'sociis': 'ut',
                            'augue': 'est',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'eget': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'quisque': 'ante',
                            'vivamus': 'scelerisque',
                            'arcu': 'hac',
                            'sagittis': 'vel',
                            'etiam': 'rhoncus',
                            'dictum': 'turpis',
                            'metus': 'vulputate',
                            'lorem': 'ridiculus',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'nisl': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'odio': 'potenti',
                            'potenti': 'euismod',
                            'pharetra': 'blandit',
                            'leo': 'ut',
                            'phasellus': 'donec',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'vivamus': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'dis': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'cursus': 'ante',
                            'eu': 'donec',
                            'volutpat': 'luctus',
                            'commodo': 'turpis',
                            'lacus': 'vel',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'nisl': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((fields: <String, String>{}.lock)),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{}
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{}
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{
                  'luctus': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'vitae': 'viverra',
                            'iaculis': 'est',
                            'nulla': 'lectus',
                            'interdum': 'gravida',
                            'erat': 'commodo',
                            'neque': 'nascetur',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'id': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'morbi': 'aliquam',
                            'proin': 'dignissim',
                            'feugiat': 'morbi',
                            'ipsum': 'mattis',
                            'commodo': 'condimentum',
                            'placerat': 'magnis',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'leo': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'lacus': 'posuere',
                            'praesent': 'ligula',
                            'penatibus': 'arcu',
                            'malesuada': 'suscipit',
                            'elementum': 'velit',
                            'mauris': 'eros',
                            'vulputate': 'laoreet',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'mattis': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'interdum': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'rhoncus': 'nullam',
                            'quam': 'condimentum',
                            'gravida': 'sem',
                            'mauris': 'sociis',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'justo': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'nibh': 'ipsum',
                            'vitae': 'nullam',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{
                  'augue': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'sem': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'ante': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{
                  'maecenas': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'venenatis': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'pharetra': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'arcu': 'eleifend',
                            'duis': 'dictum',
                            'aliquet': 'lorem',
                            'mattis': 'auctor',
                            'dapibus': 'bibendum',
                            'nunc': 'porta',
                            'tempor': 'sed',
                            'amet': 'quam',
                            'aenean': 'magna',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'eget': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{
                  'ullamcorper': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'imperdiet': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'a': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((fields: <String, String>{}.lock)),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'dictum': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'vitae': 'venenatis',
                            'lobortis': 'senectus',
                            'aliquam': 'nascetur',
                            'nisl': 'non',
                            'fusce': 'cum',
                            'accumsan': 'justo',
                            'nisi': 'vitae',
                            'lorem': 'curabitur',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'lobortis': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{
                  'sapien': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'eget': 'justo',
                            'congue': 'lacinia',
                            'suscipit': 'tempus',
                            'praesent': 'in',
                            'ullamcorper': 'rhoncus',
                            'massa': 'vestibulum',
                            'metus': 'justo',
                            'malesuada': 'euismod',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'lacus': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'eleifend': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'sit': 'dui',
                            'lorem': 'hac',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'viverra': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'fames': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'mollis': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'consequat': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'urna': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in2($NumberLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{}
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({
                        Union3<$StringLiteral, $NumberLiteral, $BooleanLiteral>
                        primitive,
                      }),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    Union3<$PrimitiveLiteral, $ObjectLiteral, $ArrayLiteral>
                    type,
                  })
                >{
                  'semper': (
                    required: true,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'faucibus': 'metus',
                            'sit': 'ultrices',
                            'augue': 'lobortis',
                            'purus': 'morbi',
                            'augue': 'suscipit',
                            'hac': 'fringilla',
                            'rhoncus': 'donec',
                            'commodo': 'diam',
                            'laoreet': 'at',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                  'sem': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'dignissim': 'egestas',
                            'augue': 'nibh',
                            'libero': 'laoreet',
                          }.lock,
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in1($PrimitiveLiteral()),
                  ),
                  'commodo': (
                    required: false,
                    schema:
                        Union3<
                          ({
                            Union3<
                              $StringLiteral,
                              $NumberLiteral,
                              $BooleanLiteral
                            >
                            primitive,
                          }),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive:
                              Union3<
                                $StringLiteral,
                                $NumberLiteral,
                                $BooleanLiteral
                              >.in1($StringLiteral()),
                        )),
                    type:
                        Union3<
                          $PrimitiveLiteral,
                          $ObjectLiteral,
                          $ArrayLiteral
                        >.in2($ObjectLiteral()),
                  ),
                }
                .lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery122.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery122.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query123', () async {
    final datas = <Query123Args>[
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Defined('quis'),
              dimensions: (
                height: 0.22142039531905655,
                width: 0.2293490732586747,
              ),
              type: $ImageLiteral(),
              url: 'condimentum',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Undefined(),
              dimensions: (
                height: 0.311005244504002,
                width: 0.8434279133317403,
              ),
              type: $ImageLiteral(),
              url: 'est',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in1((
              content: 'nam',
              formatting: Undefined(),
              type: $TextLiteral(),
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Defined('lacus'),
              dimensions: (
                height: 0.4081247119940603,
                width: 0.1162557000359341,
              ),
              type: $ImageLiteral(),
              url: 'nunc',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Defined('odio'),
              dimensions: (
                height: 0.8450695404489605,
                width: 0.28165116264470824,
              ),
              type: $ImageLiteral(),
              url: 'ornare',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Defined('vestibulum'),
              dimensions: (
                height: 0.3515605250910514,
                width: 0.2570361749587351,
              ),
              type: $ImageLiteral(),
              url: 'condimentum',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Undefined(),
              dimensions: (
                height: 0.23460240938344734,
                width: 0.3277079851567053,
              ),
              type: $ImageLiteral(),
              url: 'cursus',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Defined('erat'),
              dimensions: (
                height: 0.3006023062389276,
                width: 0.9659190238182286,
              ),
              type: $ImageLiteral(),
              url: 'phasellus',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in2((
              alt: Defined('ipsum'),
              dimensions: (
                height: 0.011429810847987332,
                width: 0.9918551570662177,
              ),
              type: $ImageLiteral(),
              url: 'cum',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<
                  ({
                    bool bold,
                    Union3<$RedLiteral, $BlueLiteral, $GreenLiteral> color,
                    bool italic,
                  })
                >
                formatting,
                $TextLiteral type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $ImageLiteral type,
                String url,
              }),
              ({IList<String> items, bool ordered, $ListLiteral type})
            >.in1((
              content: 'aliquam',
              formatting: Defined((
                bold: true,
                color: Union3<$RedLiteral, $BlueLiteral, $GreenLiteral>.in2(
                  $BlueLiteral(),
                ),
                italic: false,
              )),
              type: $TextLiteral(),
            )),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery123.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery123.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query124', () async {
    final datas = <Query124Args>[
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'vulputate': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'turpis': Union3<String, double, bool>.in2(
                            0.7035381706083692,
                          ),
                          'nibh': Union3<String, double, bool>.in2(
                            0.2891887931685957,
                          ),
                        }.lock,
                        path: 'elementum',
                        response: 945355,
                      ),
                      'phasellus': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'pellentesque': Union3<String, double, bool>.in1(
                            'nec',
                          ),
                          'felis': Union3<String, double, bool>.in1('praesent'),
                          'hac': Union3<String, double, bool>.in2(
                            0.8850138703993283,
                          ),
                          'ornare': Union3<String, double, bool>.in2(
                            0.6220643348746813,
                          ),
                          'egestas': Union3<String, double, bool>.in1('enim'),
                          'sem': Union3<String, double, bool>.in2(
                            0.7786667462769404,
                          ),
                          'proin': Union3<String, double, bool>.in1(
                            'consequat',
                          ),
                          'ligula': Union3<String, double, bool>.in2(
                            0.3561496235547599,
                          ),
                        }.lock,
                        path: 'magna',
                        response: true,
                      ),
                      'magna': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'leo': Union3<String, double, bool>.in1('dis'),
                          'duis': Union3<String, double, bool>.in1('dictumst'),
                          'nulla': Union3<String, double, bool>.in1('mi'),
                          'quis': Union3<String, double, bool>.in1('ultricies'),
                          'iaculis': Union3<String, double, bool>.in1(
                            'imperdiet',
                          ),
                        }.lock,
                        path: 'fusce',
                        response: 0.755018028656558,
                      ),
                      'ligula': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'mus': Union3<String, double, bool>.in2(
                            0.8214678593516789,
                          ),
                          'habitasse': Union3<String, double, bool>.in1(
                            'tempus',
                          ),
                          'tempus': Union3<String, double, bool>.in2(
                            0.1006344073111256,
                          ),
                          'iaculis': Union3<String, double, bool>.in2(
                            0.10038048928250831,
                          ),
                          'blandit': Union3<String, double, bool>.in2(
                            0.4468586320060751,
                          ),
                          'praesent': Union3<String, double, bool>.in2(
                            0.8844782289479741,
                          ),
                          'vel': Union3<String, double, bool>.in2(
                            0.5084160010058054,
                          ),
                          'sagittis': Union3<String, double, bool>.in2(
                            0.7055275801180138,
                          ),
                          'velit': Union3<String, double, bool>.in1('justo'),
                        }.lock,
                        path: 'phasellus',
                        response: 0.4272307446935255,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.2498793360920989,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in1(
                $MinuteLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'duis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'parturient',
                                      'augue',
                                      'potenti',
                                      'lobortis',
                                      'auctor',
                                    ].lock,
                                    name: 'ipsum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['erat'].lock,
                                    name: 'iaculis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'phasellus',
                                      'ridiculus',
                                      'malesuada',
                                      'suspendisse',
                                      'duis',
                                      'tristique',
                                      'mollis',
                                    ].lock,
                                    name: 'tellus',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{}
                                .lock,
                      ),
                      'varius': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['velit', 'ligula'].lock,
                                    name: 'nascetur',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'malesuada',
                                      'porttitor',
                                      'volutpat',
                                      'cras',
                                      'phasellus',
                                      'at',
                                      'blandit',
                                      'non',
                                    ].lock,
                                    name: 'imperdiet',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'varius',
                                      'sed',
                                      'tempus',
                                      'iaculis',
                                    ].lock,
                                    name: 'tellus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'molestie',
                                      'convallis',
                                      'a',
                                      'sem',
                                      'habitasse',
                                      'nisl',
                                    ].lock,
                                    name: 'aenean',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'natoque',
                                      'congue',
                                      'dignissim',
                                      'curabitur',
                                      'massa',
                                    ].lock,
                                    name: 'nullam',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'id',
                                      'etiam',
                                      'dui',
                                      'vulputate',
                                      'ullamcorper',
                                      'mauris',
                                    ].lock,
                                    name: 'venenatis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'integer',
                                      'nisi',
                                      'habitant',
                                      'nullam',
                                    ].lock,
                                    name: 'dui',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'dignissim',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'imperdiet',
                                      'praesent',
                                      'montes',
                                      'vitae',
                                      'ut',
                                      'est',
                                      'vitae',
                                      'cras',
                                      'feugiat',
                                    ].lock,
                                    name: 'platea',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'laoreet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'maecenas':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'dui':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'quam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'malesuada':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'felis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'mi':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'fermentum': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'nam': Union3<String, double, bool>.in1('consequat'),
                          'ornare': Union3<String, double, bool>.in1('metus'),
                          'iaculis': Union3<String, double, bool>.in1('proin'),
                          'pharetra': Union3<String, double, bool>.in2(
                            0.16472542040271299,
                          ),
                        }.lock,
                        path: 'eu',
                        response: 934032,
                      ),
                      'tincidunt': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'ipsum': Union3<String, double, bool>.in2(
                            0.8943070492653871,
                          ),
                          'nullam': Union3<String, double, bool>.in1(
                            'habitant',
                          ),
                          'neque': Union3<String, double, bool>.in1('sed'),
                        }.lock,
                        path: 'risus',
                        response: false,
                      ),
                      'ridiculus': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'est': Union3<String, double, bool>.in2(
                            0.42329476373168273,
                          ),
                          'condimentum': Union3<String, double, bool>.in1(
                            'eget',
                          ),
                          'varius': Union3<String, double, bool>.in2(
                            0.5191680559373044,
                          ),
                        }.lock,
                        path: 'mi',
                        response: 'leo',
                      ),
                      'cum': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'gravida': Union3<String, double, bool>.in2(
                            0.2523095881118689,
                          ),
                          'sociis': Union3<String, double, bool>.in1(
                            'malesuada',
                          ),
                          'tellus': Union3<String, double, bool>.in2(
                            0.33472831441856243,
                          ),
                          'fusce': Union3<String, double, bool>.in2(
                            0.06585522343107886,
                          ),
                          'proin': Union3<String, double, bool>.in2(
                            0.06443972417543808,
                          ),
                          'urna': Union3<String, double, bool>.in2(
                            0.3193433363170629,
                          ),
                          'senectus': Union3<String, double, bool>.in2(
                            0.19523993875657986,
                          ),
                        }.lock,
                        path: 'nunc',
                        response: false,
                      ),
                      'dignissim': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'lorem': Union3<String, double, bool>.in1('blandit'),
                          'montes': Union3<String, double, bool>.in1('montes'),
                          'egestas': Union3<String, double, bool>.in1('odio'),
                          'vestibulum': Union3<String, double, bool>.in2(
                            0.37838587908683485,
                          ),
                        }.lock,
                        path: 'suscipit',
                        response: 359030,
                      ),
                      'commodo': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'natoque': Union3<String, double, bool>.in1('magnis'),
                          'consectetur': Union3<String, double, bool>.in2(
                            0.021257083059014747,
                          ),
                          'montes': Union3<String, double, bool>.in1('nullam'),
                          'dapibus': Union3<String, double, bool>.in2(
                            0.440830182867642,
                          ),
                          'enim': Union3<String, double, bool>.in2(
                            0.8553011161018409,
                          ),
                          'ac': Union3<String, double, bool>.in2(
                            0.3784347222576766,
                          ),
                        }.lock,
                        path: 'dapibus',
                        response: 0.9624773551364292,
                      ),
                      'arcu': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'sagittis': Union3<String, double, bool>.in2(
                            0.9710176602310209,
                          ),
                          'fermentum': Union3<String, double, bool>.in2(
                            0.7121446510893626,
                          ),
                          'dapibus': Union3<String, double, bool>.in1('luctus'),
                          'dolor': Union3<String, double, bool>.in1('ornare'),
                          'at': Union3<String, double, bool>.in2(
                            0.8665766581756259,
                          ),
                          'rhoncus': Union3<String, double, bool>.in1(
                            'vulputate',
                          ),
                        }.lock,
                        path: 'tempus',
                        response: 372558,
                      ),
                      'sit': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'tempor': Union3<String, double, bool>.in1('sociis'),
                          'hac': Union3<String, double, bool>.in2(
                            0.5088156366675686,
                          ),
                          'posuere': Union3<String, double, bool>.in1('diam'),
                          'pretium': Union3<String, double, bool>.in2(
                            0.9364106947683998,
                          ),
                        }.lock,
                        path: 'morbi',
                        response: 110452,
                      ),
                      'vitae': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'ullamcorper': Union3<String, double, bool>.in1(
                            'accumsan',
                          ),
                          'imperdiet': Union3<String, double, bool>.in2(
                            0.3866606054923263,
                          ),
                          'est': Union3<String, double, bool>.in1('lacus'),
                          'sed': Union3<String, double, bool>.in1('suscipit'),
                          'in': Union3<String, double, bool>.in1('semper'),
                          'convallis': Union3<String, double, bool>.in1('erat'),
                          'lectus': Union3<String, double, bool>.in2(
                            0.3262732452017314,
                          ),
                        }.lock,
                        path: 'vestibulum',
                        response: true,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.7264201130739263,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in1(
                $MinuteLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'porttitor': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'suscipit',
                                      'pellentesque',
                                      'fames',
                                    ].lock,
                                    name: 'et',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'dictum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'fringilla':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'cum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'sodales':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'dictumst':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'tempor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                      'pretium': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'parturient',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'integer',
                                      'malesuada',
                                      'sem',
                                    ].lock,
                                    name: 'euismod',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['interdum', 'tempus'].lock,
                                    name: 'lobortis',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'ultrices':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'lacus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'commodo':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'eget':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'dictum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'porttitor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'pulvinar': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'sem',
                                      'sollicitudin',
                                      'dis',
                                      'vitae',
                                      'sit',
                                      'libero',
                                    ].lock,
                                    name: 'adipiscing',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'mattis',
                                      'sociis',
                                      'dignissim',
                                      'ut',
                                      'proin',
                                      'lobortis',
                                    ].lock,
                                    name: 'lacinia',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'diam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'ullamcorper':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'fusce':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'curabitur':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'dignissim':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'convallis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'odio':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'senectus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                      'quis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'velit',
                                      'interdum',
                                      'a',
                                    ].lock,
                                    name: 'ullamcorper',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'vivamus',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'convallis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'metus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'et':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'dapibus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'velit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'rhoncus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['et'].lock,
                                    name: 'mattis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'velit',
                                      'enim',
                                      'mi',
                                      'congue',
                                      'accumsan',
                                      'tellus',
                                    ].lock,
                                    name: 'fames',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'sit',
                                      'porttitor',
                                      'pulvinar',
                                    ].lock,
                                    name: 'facilisi',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'sit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'suscipit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'facilisis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'justo':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'venenatis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'sagittis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'sodales':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'aliquet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'ligula': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['at', 'eu'].lock,
                                    name: 'interdum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['ullamcorper'].lock,
                                    name: 'eu',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'velit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'maecenas':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'commodo':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'mattis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'scelerisque':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'orci':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'ultrices':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'imperdiet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'arcu':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'eros': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'sapien': Union3<String, double, bool>.in2(
                            0.8918115664042497,
                          ),
                          'ut': Union3<String, double, bool>.in2(
                            0.10778336474975125,
                          ),
                          'eget': Union3<String, double, bool>.in1('aliquam'),
                          'elementum': Union3<String, double, bool>.in1(
                            'hendrerit',
                          ),
                          'pellentesque': Union3<String, double, bool>.in2(
                            0.8189006265231241,
                          ),
                          'mus': Union3<String, double, bool>.in1('platea'),
                          'metus': Union3<String, double, bool>.in2(
                            0.3057985923542369,
                          ),
                          'cras': Union3<String, double, bool>.in2(
                            0.32834812975949534,
                          ),
                          'lacinia': Union3<String, double, bool>.in2(
                            0.6098454071505238,
                          ),
                        }.lock,
                        path: 'sociis',
                        response: 0.1288362744784598,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.24809750123922747,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in1(
                $MinuteLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'consequat': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'proin',
                                      'pharetra',
                                      'in',
                                      'hac',
                                      'fringilla',
                                      'dictum',
                                      'tortor',
                                      'eros',
                                      'sem',
                                    ].lock,
                                    name: 'dui',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'nisi':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'amet': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'magna': Union3<String, double, bool>.in2(
                            0.9437589478844373,
                          ),
                          'sed': Union3<String, double, bool>.in1('mauris'),
                          'varius': Union3<String, double, bool>.in2(
                            0.6644631177228769,
                          ),
                        }.lock,
                        path: 'parturient',
                        response: true,
                      ),
                      'phasellus': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'bibendum': Union3<String, double, bool>.in1(
                            'tellus',
                          ),
                          'laoreet': Union3<String, double, bool>.in2(
                            0.9566341867323318,
                          ),
                          'semper': Union3<String, double, bool>.in2(
                            0.932876680137353,
                          ),
                        }.lock,
                        path: 'tempus',
                        response: 'velit',
                      ),
                      'tincidunt': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'accumsan': Union3<String, double, bool>.in2(
                            0.1507909508132832,
                          ),
                        }.lock,
                        path: 'dolor',
                        response: true,
                      ),
                      'libero': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'iaculis',
                        response: 0.009244555106160068,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.574149130565149,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in2(
                $HourLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'pharetra': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'curabitur',
                                      'vivamus',
                                      'vulputate',
                                      'ligula',
                                      'amet',
                                    ].lock,
                                    name: 'venenatis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['ac'].lock,
                                    name: 'aenean',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'sed',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'habitant',
                                      'phasellus',
                                      'tortor',
                                      'cursus',
                                      'adipiscing',
                                      'volutpat',
                                      'neque',
                                      'fringilla',
                                    ].lock,
                                    name: 'vitae',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'adipiscing',
                                      'accumsan',
                                      'nibh',
                                      'malesuada',
                                      'aliquet',
                                      'adipiscing',
                                    ].lock,
                                    name: 'etiam',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'feugiat',
                                      'pulvinar',
                                    ].lock,
                                    name: 'malesuada',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'tortor',
                                      'varius',
                                      'leo',
                                      'purus',
                                      'scelerisque',
                                      'duis',
                                      'amet',
                                      'ante',
                                      'auctor',
                                    ].lock,
                                    name: 'urna',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['suscipit'].lock,
                                    name: 'volutpat',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'laoreet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'ante':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'arcu':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'suscipit': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'habitant',
                                      'nam',
                                      'porttitor',
                                      'ultricies',
                                    ].lock,
                                    name: 'hendrerit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ante',
                                      'duis',
                                      'ac',
                                      'ornare',
                                    ].lock,
                                    name: 'id',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'viverra',
                                      'euismod',
                                      'pulvinar',
                                      'quisque',
                                    ].lock,
                                    name: 'semper',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'ornare':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'convallis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'penatibus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'phasellus',
                                      'facilisis',
                                      'laoreet',
                                      'ipsum',
                                      'mi',
                                    ].lock,
                                    name: 'posuere',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['vel', 'non'].lock,
                                    name: 'nec',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'turpis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'viverra':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'nunc':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'varius':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'congue':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'adipiscing': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'vel',
                                      'condimentum',
                                      'lacinia',
                                      'id',
                                      'fusce',
                                      'enim',
                                      'pretium',
                                      'enim',
                                    ].lock,
                                    name: 'proin',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'massa',
                                      'erat',
                                      'facilisi',
                                      'dignissim',
                                      'lacinia',
                                      'eleifend',
                                    ].lock,
                                    name: 'tincidunt',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['eu'].lock,
                                    name: 'fusce',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'sem':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'fermentum': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'lacinia': Union3<String, double, bool>.in1('mauris'),
                          'diam': Union3<String, double, bool>.in2(
                            0.03742548064479079,
                          ),
                          'ultricies': Union3<String, double, bool>.in2(
                            0.8663110870136576,
                          ),
                          'lacinia': Union3<String, double, bool>.in2(
                            0.48211707377549295,
                          ),
                          'quam': Union3<String, double, bool>.in1('elementum'),
                        }.lock,
                        path: 'potenti',
                        response: 0.9364591873055472,
                      ),
                      'facilisi': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'accumsan': Union3<String, double, bool>.in1(
                            'iaculis',
                          ),
                          'sed': Union3<String, double, bool>.in2(
                            0.0444756566350516,
                          ),
                          'semper': Union3<String, double, bool>.in2(
                            0.9995530165397416,
                          ),
                          'ac': Union3<String, double, bool>.in1('pretium'),
                          'mollis': Union3<String, double, bool>.in1('integer'),
                          'iaculis': Union3<String, double, bool>.in1('magna'),
                        }.lock,
                        path: 'ullamcorper',
                        response: true,
                      ),
                      'accumsan': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'bibendum',
                        response: 218317,
                      ),
                      'est': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'etiam': Union3<String, double, bool>.in1(
                            'malesuada',
                          ),
                          'porttitor': Union3<String, double, bool>.in2(
                            0.5753269407098637,
                          ),
                          'nec': Union3<String, double, bool>.in2(
                            0.7632739677994649,
                          ),
                        }.lock,
                        path: 'maecenas',
                        response: 70620,
                      ),
                      'luctus': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'lobortis': Union3<String, double, bool>.in2(
                            0.03769743428034977,
                          ),
                          'habitasse': Union3<String, double, bool>.in2(
                            0.17392218592563413,
                          ),
                        }.lock,
                        path: 'quisque',
                        response: 'nisl',
                      ),
                      'suspendisse': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'aenean': Union3<String, double, bool>.in1(
                            'facilisi',
                          ),
                          'senectus': Union3<String, double, bool>.in1('duis'),
                          'donec': Union3<String, double, bool>.in1('feugiat'),
                        }.lock,
                        path: 'fusce',
                        response: false,
                      ),
                      'turpis': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'interdum': Union3<String, double, bool>.in1(
                            'dapibus',
                          ),
                          'phasellus': Union3<String, double, bool>.in2(
                            0.7188113871705578,
                          ),
                          'integer': Union3<String, double, bool>.in2(
                            0.30415481440398184,
                          ),
                          'nisi': Union3<String, double, bool>.in1('netus'),
                          'nullam': Union3<String, double, bool>.in2(
                            0.3753319823675918,
                          ),
                          'habitasse': Union3<String, double, bool>.in1('orci'),
                          'in': Union3<String, double, bool>.in2(
                            0.3463387692030361,
                          ),
                          'netus': Union3<String, double, bool>.in1('nibh'),
                          'faucibus': Union3<String, double, bool>.in2(
                            0.11384492919774691,
                          ),
                        }.lock,
                        path: 'sem',
                        response: 381422,
                      ),
                      'imperdiet': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'at',
                        response: 'etiam',
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.47915538700137483,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in2(
                $HourLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'duis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'integer':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'diam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'nullam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'leo':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'nec':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'augue':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'sapien':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'erat':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'metus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'ridiculus',
                                      'venenatis',
                                      'ultricies',
                                      'consectetur',
                                      'vivamus',
                                    ].lock,
                                    name: 'montes',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'sagittis',
                                      'mollis',
                                      'nec',
                                      'semper',
                                    ].lock,
                                    name: 'nam',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'augue',
                                      'mattis',
                                      'auctor',
                                      'tempus',
                                      'laoreet',
                                      'risus',
                                      'scelerisque',
                                    ].lock,
                                    name: 'leo',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'placerat',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'vulputate',
                                      'platea',
                                      'mus',
                                      'mus',
                                      'elementum',
                                      'vitae',
                                      'aenean',
                                      'varius',
                                    ].lock,
                                    name: 'scelerisque',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'lorem',
                                      'ullamcorper',
                                      'placerat',
                                      'platea',
                                      'scelerisque',
                                      'phasellus',
                                      'gravida',
                                    ].lock,
                                    name: 'convallis',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'ridiculus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'imperdiet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'dolor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'sem':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'est':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'dolor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'porta':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'integer':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'cum': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'interdum': Union3<String, double, bool>.in2(
                            0.4884374860088002,
                          ),
                          'lacus': Union3<String, double, bool>.in2(
                            0.7345796191467745,
                          ),
                          'porttitor': Union3<String, double, bool>.in2(
                            0.11069270996840141,
                          ),
                          'tempor': Union3<String, double, bool>.in1('nulla'),
                          'dui': Union3<String, double, bool>.in1('senectus'),
                          'feugiat': Union3<String, double, bool>.in1('tellus'),
                        }.lock,
                        path: 'congue',
                        response: 'luctus',
                      ),
                      'iaculis': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'vitae': Union3<String, double, bool>.in2(
                            0.8270317998497193,
                          ),
                          'diam': Union3<String, double, bool>.in2(
                            0.32872040693373605,
                          ),
                          'tristique': Union3<String, double, bool>.in1(
                            'bibendum',
                          ),
                          'et': Union3<String, double, bool>.in1('consequat'),
                          'fermentum': Union3<String, double, bool>.in1(
                            'feugiat',
                          ),
                          'vivamus': Union3<String, double, bool>.in1('duis'),
                          'accumsan': Union3<String, double, bool>.in2(
                            0.8606014984413161,
                          ),
                          'magnis': Union3<String, double, bool>.in2(
                            0.07056282436797301,
                          ),
                        }.lock,
                        path: 'ante',
                        response: true,
                      ),
                      'massa': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'quis',
                        response: 0.5421292760152838,
                      ),
                      'metus': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'vivamus': Union3<String, double, bool>.in2(
                            0.38691378981360147,
                          ),
                          'massa': Union3<String, double, bool>.in1(
                            'fringilla',
                          ),
                          'suspendisse': Union3<String, double, bool>.in2(
                            0.37366572960936206,
                          ),
                        }.lock,
                        path: 'maecenas',
                        response: false,
                      ),
                      'risus': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'consequat',
                        response: 0.4718951792863253,
                      ),
                      'sapien': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'ultrices': Union3<String, double, bool>.in2(
                            0.6904718926383614,
                          ),
                          'lorem': Union3<String, double, bool>.in1('tempor'),
                          'vitae': Union3<String, double, bool>.in1('quam'),
                        }.lock,
                        path: 'malesuada',
                        response: 'pellentesque',
                      ),
                      'hac': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'pharetra': Union3<String, double, bool>.in2(
                            0.651679451278833,
                          ),
                          'risus': Union3<String, double, bool>.in1('potenti'),
                          'eu': Union3<String, double, bool>.in2(
                            0.6151462602784643,
                          ),
                        }.lock,
                        path: 'habitasse',
                        response: 'at',
                      ),
                      'molestie': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'egestas': Union3<String, double, bool>.in1(
                            'penatibus',
                          ),
                          'platea': Union3<String, double, bool>.in2(
                            0.3731218082165375,
                          ),
                          'dictum': Union3<String, double, bool>.in2(
                            0.963975811646439,
                          ),
                          'gravida': Union3<String, double, bool>.in1('montes'),
                        }.lock,
                        path: 'dui',
                        response: 'scelerisque',
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.8073128109700458,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in2(
                $HourLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'purus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'scelerisque',
                                      'adipiscing',
                                      'vivamus',
                                      'risus',
                                      'pellentesque',
                                      'ante',
                                      'tellus',
                                      'vulputate',
                                      'nisi',
                                    ].lock,
                                    name: 'fermentum',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'lectus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'montes': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'habitasse',
                                      'felis',
                                      'integer',
                                      'aenean',
                                      'mollis',
                                    ].lock,
                                    name: 'curabitur',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'diam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'odio':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                      'dui': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'nec',
                                      'odio',
                                      'nulla',
                                      'iaculis',
                                    ].lock,
                                    name: 'volutpat',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'habitasse',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'habitant',
                                      'mattis',
                                      'pretium',
                                      'ullamcorper',
                                      'elit',
                                    ].lock,
                                    name: 'interdum',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['dis', 'felis'].lock,
                                    name: 'hac',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'suscipit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'malesuada',
                                      'semper',
                                      'nullam',
                                      'erat',
                                      'nullam',
                                      'laoreet',
                                    ].lock,
                                    name: 'donec',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'amet',
                                      'vulputate',
                                      'auctor',
                                      'diam',
                                      'dictumst',
                                      'potenti',
                                    ].lock,
                                    name: 'venenatis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'dapibus',
                                      'aenean',
                                      'mattis',
                                      'suspendisse',
                                      'massa',
                                      'facilisi',
                                      'nec',
                                    ].lock,
                                    name: 'ornare',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['hendrerit', 'lorem'].lock,
                                    name: 'risus',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'proin':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'tempor': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'aliquam': Union3<String, double, bool>.in2(
                            0.965231770977505,
                          ),
                        }.lock,
                        path: 'sociis',
                        response: 0.6364408806814952,
                      ),
                      'ultrices': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'ante': Union3<String, double, bool>.in1('ridiculus'),
                          'interdum': Union3<String, double, bool>.in2(
                            0.09150956588633663,
                          ),
                          'orci': Union3<String, double, bool>.in2(
                            0.7527088621430917,
                          ),
                          'curabitur': Union3<String, double, bool>.in2(
                            0.9421441331386706,
                          ),
                          'fringilla': Union3<String, double, bool>.in2(
                            0.4131054813420453,
                          ),
                        }.lock,
                        path: 'tellus',
                        response: 740374,
                      ),
                      'ridiculus': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'nascetur': Union3<String, double, bool>.in1('non'),
                          'justo': Union3<String, double, bool>.in2(
                            0.11674231588210737,
                          ),
                          'curabitur': Union3<String, double, bool>.in1(
                            'velit',
                          ),
                          'habitasse': Union3<String, double, bool>.in1('eget'),
                          'maecenas': Union3<String, double, bool>.in2(
                            0.9855660215688118,
                          ),
                        }.lock,
                        path: 'amet',
                        response: 612079,
                      ),
                      'augue': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'hendrerit': Union3<String, double, bool>.in1(
                            'dictum',
                          ),
                          'nisl': Union3<String, double, bool>.in1('dictum'),
                          'malesuada': Union3<String, double, bool>.in1('erat'),
                          'vulputate': Union3<String, double, bool>.in2(
                            0.5181944750382544,
                          ),
                        }.lock,
                        path: 'nulla',
                        response: 0.10151018671151824,
                      ),
                      'molestie': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'fermentum',
                        response: 0.7887452931567193,
                      ),
                      'at': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'mattis': Union3<String, double, bool>.in1(
                            'condimentum',
                          ),
                          'porttitor': Union3<String, double, bool>.in1(
                            'convallis',
                          ),
                          'sollicitudin': Union3<String, double, bool>.in2(
                            0.4707263284476443,
                          ),
                          'ligula': Union3<String, double, bool>.in2(
                            0.2703200573083495,
                          ),
                          'magna': Union3<String, double, bool>.in1('gravida'),
                          'mollis': Union3<String, double, bool>.in2(
                            0.05753166973066326,
                          ),
                          'natoque': Union3<String, double, bool>.in2(
                            0.9876988826885912,
                          ),
                          'aliquam': Union3<String, double, bool>.in1(
                            'venenatis',
                          ),
                        }.lock,
                        path: 'dis',
                        response: 0.22009952484136364,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.32236298885110504,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in1(
                $MinuteLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'montes': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'laoreet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'elementum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'praesent':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'mus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'natoque':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'netus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'suscipit',
                                      'metus',
                                      'purus',
                                      'in',
                                      'commodo',
                                      'at',
                                      'lacus',
                                      'a',
                                    ].lock,
                                    name: 'eu',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'mi',
                                      'eleifend',
                                      'consectetur',
                                      'tempor',
                                    ].lock,
                                    name: 'nam',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['sapien'].lock,
                                    name: 'et',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'velit',
                                      'dictum',
                                      'fringilla',
                                      'nulla',
                                      'fringilla',
                                      'nullam',
                                      'sociis',
                                    ].lock,
                                    name: 'lacus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'eleifend',
                                      'duis',
                                      'elit',
                                      'libero',
                                      'aenean',
                                      'posuere',
                                      'lorem',
                                      'ridiculus',
                                    ].lock,
                                    name: 'nulla',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{}
                                .lock,
                      ),
                      'metus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'habitant':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'eleifend': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'sociis',
                                      'nullam',
                                      'cum',
                                    ].lock,
                                    name: 'praesent',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['fusce', 'vulputate'].lock,
                                    name: 'nibh',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['euismod'].lock,
                                    name: 'libero',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'etiam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'eleifend':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'facilisis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'proin':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'feugiat':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'iaculis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'pellentesque': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['aenean'].lock,
                                    name: 'commodo',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ornare',
                                      'nam',
                                      'sociis',
                                    ].lock,
                                    name: 'vitae',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'magna',
                                      'mattis',
                                      'libero',
                                      'in',
                                      'cum',
                                      'elit',
                                      'parturient',
                                      'sollicitudin',
                                    ].lock,
                                    name: 'fringilla',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'at',
                                      'vel',
                                      'aliquet',
                                      'integer',
                                      'etiam',
                                      'mus',
                                    ].lock,
                                    name: 'at',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['volutpat'].lock,
                                    name: 'elit',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'dignissim',
                                      'ultricies',
                                      'nisi',
                                      'lectus',
                                      'facilisi',
                                      'iaculis',
                                      'facilisis',
                                      'phasellus',
                                    ].lock,
                                    name: 'phasellus',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'in':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'aliquet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'diam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'nibh': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['in', 'montes', 'id'].lock,
                                    name: 'quam',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'tincidunt',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'nisi',
                                      'dui',
                                      'massa',
                                      'urna',
                                      'montes',
                                      'sagittis',
                                      'euismod',
                                      'dictum',
                                    ].lock,
                                    name: 'arcu',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'aenean',
                                      'magna',
                                      'rhoncus',
                                      'elit',
                                      'a',
                                      'euismod',
                                      'faucibus',
                                    ].lock,
                                    name: 'maecenas',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'venenatis',
                                      'consequat',
                                      'consequat',
                                      'ultricies',
                                      'lorem',
                                    ].lock,
                                    name: 'venenatis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'hendrerit',
                                      'suscipit',
                                    ].lock,
                                    name: 'eros',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'rhoncus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'nascetur':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'et':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'purus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'fringilla':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'praesent':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'sagittis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'lacinia': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'quam',
                                      'cras',
                                      'donec',
                                      'molestie',
                                      'maecenas',
                                    ].lock,
                                    name: 'potenti',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['dui'].lock,
                                    name: 'tortor',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'ultrices',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'semper',
                                      'sem',
                                      'ultrices',
                                    ].lock,
                                    name: 'mollis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'lorem',
                                      'magnis',
                                      'penatibus',
                                    ].lock,
                                    name: 'luctus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'gravida',
                                      'dui',
                                      'hendrerit',
                                    ].lock,
                                    name: 'molestie',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'scelerisque',
                                      'pellentesque',
                                      'elementum',
                                      'posuere',
                                    ].lock,
                                    name: 'imperdiet',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'vestibulum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'nascetur':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'euismod':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'at':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'ullamcorper':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'nullam':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'magnis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['sed'].lock,
                                    name: 'tellus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'aliquet',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'semper',
                                      'ultricies',
                                      'odio',
                                      'posuere',
                                      'proin',
                                    ].lock,
                                    name: 'quis',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'viverra':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'vitae':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'accumsan': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'libero',
                                      'ut',
                                      'posuere',
                                      'sollicitudin',
                                      'nec',
                                      'potenti',
                                      'dictumst',
                                    ].lock,
                                    name: 'est',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'condimentum',
                                      'lorem',
                                      'suscipit',
                                      'felis',
                                      'cras',
                                      'fringilla',
                                      'nibh',
                                      'aenean',
                                    ].lock,
                                    name: 'ante',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['odio'].lock,
                                    name: 'lacus',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'ligula':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'blandit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'morbi':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'ornare':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'nullam': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'feugiat',
                        response: 0.2800599527696107,
                      ),
                      'nascetur': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'turpis': Union3<String, double, bool>.in2(
                            0.699118681508065,
                          ),
                          'sed': Union3<String, double, bool>.in1('senectus'),
                          'ridiculus': Union3<String, double, bool>.in2(
                            0.11781101912115122,
                          ),
                          'facilisis': Union3<String, double, bool>.in2(
                            0.8317918734618458,
                          ),
                          'cras': Union3<String, double, bool>.in1('maecenas'),
                          'ornare': Union3<String, double, bool>.in1(
                            'venenatis',
                          ),
                        }.lock,
                        path: 'dis',
                        response: 'pellentesque',
                      ),
                      'luctus': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'ridiculus': Union3<String, double, bool>.in1(
                            'lorem',
                          ),
                          'auctor': Union3<String, double, bool>.in2(
                            0.8568109769803174,
                          ),
                          'egestas': Union3<String, double, bool>.in2(
                            0.5848319723492087,
                          ),
                        }.lock,
                        path: 'cras',
                        response: 0.7134586972394021,
                      ),
                      'sociis': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'tincidunt': Union3<String, double, bool>.in2(
                            0.45112660030302987,
                          ),
                        }.lock,
                        path: 'facilisis',
                        response: false,
                      ),
                      'ullamcorper': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'vulputate': Union3<String, double, bool>.in1(
                            'congue',
                          ),
                          'mauris': Union3<String, double, bool>.in2(
                            0.9538986217887432,
                          ),
                          'tortor': Union3<String, double, bool>.in2(
                            0.38438536564314063,
                          ),
                        }.lock,
                        path: 'dictum',
                        response: 0.8110404329374348,
                      ),
                      'nullam': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'integer': Union3<String, double, bool>.in1('magna'),
                          'habitant': Union3<String, double, bool>.in2(
                            0.8078936275598461,
                          ),
                          'placerat': Union3<String, double, bool>.in2(
                            0.13840530455178612,
                          ),
                          'vivamus': Union3<String, double, bool>.in1(
                            'euismod',
                          ),
                          'platea': Union3<String, double, bool>.in2(
                            0.6752681622451924,
                          ),
                        }.lock,
                        path: 'id',
                        response: true,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.3043907759781226,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in1(
                $MinuteLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'ut': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'pretium',
                                      'et',
                                      'habitasse',
                                      'convallis',
                                      'eget',
                                      'bibendum',
                                      'habitant',
                                      'senectus',
                                      'tempor',
                                    ].lock,
                                    name: 'justo',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'faucibus',
                                      'velit',
                                      'semper',
                                    ].lock,
                                    name: 'fermentum',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'pellentesque':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'suscipit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'tristique':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'posuere':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'praesent':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'platea':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'porttitor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'eu': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'commodo',
                                      'ipsum',
                                      'nec',
                                      'tellus',
                                    ].lock,
                                    name: 'auctor',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'molestie',
                                      'quisque',
                                      'dictumst',
                                      'ut',
                                      'ipsum',
                                      'amet',
                                      'ac',
                                      'diam',
                                      'bibendum',
                                    ].lock,
                                    name: 'convallis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'facilisi',
                                      'tortor',
                                      'pretium',
                                      'bibendum',
                                      'fusce',
                                      'dolor',
                                    ].lock,
                                    name: 'tempor',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'purus',
                                      'at',
                                      'euismod',
                                      'proin',
                                      'fames',
                                      'nibh',
                                      'imperdiet',
                                    ].lock,
                                    name: 'et',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'molestie',
                                      'libero',
                                      'nec',
                                      'nibh',
                                      'nascetur',
                                      'donec',
                                      'ultricies',
                                      'tempus',
                                      'quis',
                                    ].lock,
                                    name: 'urna',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'imperdiet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'suspendisse':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'ipsum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'eu':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'vivamus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'quis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'consectetur':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                      'massa': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'ligula',
                                      'netus',
                                      'quis',
                                      'urna',
                                    ].lock,
                                    name: 'aliquet',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'augue',
                                      'pellentesque',
                                      'id',
                                      'tempus',
                                      'nec',
                                      'tempor',
                                    ].lock,
                                    name: 'tellus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'diam',
                                      'natoque',
                                      'sem',
                                      'sit',
                                      'curabitur',
                                    ].lock,
                                    name: 'suscipit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'a',
                                      'condimentum',
                                      'fringilla',
                                      'rhoncus',
                                      'nascetur',
                                      'etiam',
                                      'fringilla',
                                      'mus',
                                      'nisi',
                                    ].lock,
                                    name: 'eros',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['aliquam', 'a'].lock,
                                    name: 'netus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'sem',
                                      'non',
                                      'ultrices',
                                      'bibendum',
                                      'facilisis',
                                      'ultricies',
                                      'fermentum',
                                      'parturient',
                                      'sodales',
                                    ].lock,
                                    name: 'tincidunt',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'sagittis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'sed':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'lacinia':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'varius':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'consequat':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'nascetur':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'consequat':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'dictum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'velit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                      'arcu': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'gravida':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'cras': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'convallis',
                                      'integer',
                                      'justo',
                                      'quisque',
                                      'cursus',
                                      'nunc',
                                    ].lock,
                                    name: 'netus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'pretium',
                                      'fusce',
                                      'facilisi',
                                      'cursus',
                                      'eu',
                                      'ultricies',
                                      'dolor',
                                    ].lock,
                                    name: 'facilisis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'consectetur',
                                      'pharetra',
                                      'pellentesque',
                                      'pretium',
                                      'nascetur',
                                      'venenatis',
                                      'nascetur',
                                    ].lock,
                                    name: 'curabitur',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'sem':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'natoque':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'eleifend':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'eget':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'libero':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'congue':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'ridiculus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'malesuada': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'ultrices': Union3<String, double, bool>.in1(
                            'tempus',
                          ),
                          'ultricies': Union3<String, double, bool>.in1('quam'),
                          'dapibus': Union3<String, double, bool>.in2(
                            0.5711885380364535,
                          ),
                          'suscipit': Union3<String, double, bool>.in2(
                            0.8168078581615379,
                          ),
                          'dapibus': Union3<String, double, bool>.in1('auctor'),
                          'accumsan': Union3<String, double, bool>.in2(
                            0.12495213867939325,
                          ),
                          'tempus': Union3<String, double, bool>.in1('justo'),
                        }.lock,
                        path: 'senectus',
                        response: 'habitasse',
                      ),
                      'erat': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'orci': Union3<String, double, bool>.in2(
                            0.38673418121842806,
                          ),
                          'nam': Union3<String, double, bool>.in2(
                            0.8290423636537951,
                          ),
                          'nam': Union3<String, double, bool>.in1('vel'),
                          'egestas': Union3<String, double, bool>.in1(
                            'molestie',
                          ),
                          'mauris': Union3<String, double, bool>.in2(
                            0.5168952801084644,
                          ),
                          'quisque': Union3<String, double, bool>.in2(
                            0.001425757742864131,
                          ),
                          'eu': Union3<String, double, bool>.in2(
                            0.40681906499462295,
                          ),
                        }.lock,
                        path: 'nulla',
                        response: 0.43433241828407976,
                      ),
                      'convallis': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'erat': Union3<String, double, bool>.in1('purus'),
                          'pellentesque': Union3<String, double, bool>.in1(
                            'justo',
                          ),
                          'condimentum': Union3<String, double, bool>.in1(
                            'commodo',
                          ),
                          'pulvinar': Union3<String, double, bool>.in1('velit'),
                          'augue': Union3<String, double, bool>.in2(
                            0.38264062494208373,
                          ),
                          'non': Union3<String, double, bool>.in1('vel'),
                          'proin': Union3<String, double, bool>.in1('in'),
                        }.lock,
                        path: 'elementum',
                        response: 'euismod',
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.2468380259609365,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in2(
                $HourLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'felis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'hendrerit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ipsum',
                                      'malesuada',
                                      'placerat',
                                      'iaculis',
                                    ].lock,
                                    name: 'sem',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'in',
                                      'sociis',
                                      'nec',
                                      'proin',
                                    ].lock,
                                    name: 'cras',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['sem', 'nascetur'].lock,
                                    name: 'cum',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ultricies',
                                      'ultrices',
                                      'orci',
                                      'augue',
                                      'nam',
                                      'aenean',
                                    ].lock,
                                    name: 'velit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['etiam'].lock,
                                    name: 'auctor',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'etiam',
                                      'vel',
                                      'sodales',
                                      'molestie',
                                      'luctus',
                                      'mauris',
                                      'fringilla',
                                      'aliquet',
                                    ].lock,
                                    name: 'nascetur',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'hendrerit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'odio':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'pharetra':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'ante':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'tortor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'imperdiet':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'phasellus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'lobortis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                      'magna': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'auctor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'convallis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'tincidunt':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'pulvinar': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'enim',
                                      'dapibus',
                                      'condimentum',
                                      'curabitur',
                                    ].lock,
                                    name: 'proin',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'tristique',
                                      'sit',
                                      'hac',
                                      'justo',
                                      'faucibus',
                                    ].lock,
                                    name: 'facilisis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'amet',
                                      'viverra',
                                      'massa',
                                      'feugiat',
                                      'duis',
                                      'libero',
                                      'penatibus',
                                      'ullamcorper',
                                      'adipiscing',
                                    ].lock,
                                    name: 'arcu',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['vel'].lock,
                                    name: 'netus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'cursus',
                                      'cursus',
                                      'nisi',
                                      'turpis',
                                      'leo',
                                      'dictumst',
                                      'ullamcorper',
                                      'lacus',
                                      'nascetur',
                                    ].lock,
                                    name: 'platea',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'feugiat',
                                      'convallis',
                                      'ut',
                                      'dictum',
                                      'dapibus',
                                      'quam',
                                      'aliquet',
                                    ].lock,
                                    name: 'augue',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'sodales':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'porttitor':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'pharetra':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'eleifend':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'morbi':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'mollis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'magna':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'lectus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        Union4<
                          $GETLiteral,
                          $POSTLiteral,
                          $PUTLiteral,
                          $DELETELiteral
                        >
                        method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'arcu': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'mus': Union3<String, double, bool>.in1('integer'),
                          'parturient': Union3<String, double, bool>.in1(
                            'sociis',
                          ),
                          'volutpat': Union3<String, double, bool>.in2(
                            0.514862350433026,
                          ),
                          'viverra': Union3<String, double, bool>.in1(
                            'ultrices',
                          ),
                        }.lock,
                        path: 'suscipit',
                        response: 'magna',
                      ),
                      'dignissim': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'magna',
                        response: 0.6564405988125492,
                      ),
                      'dis': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'nullam': Union3<String, double, bool>.in2(
                            0.48252269331813646,
                          ),
                        }.lock,
                        path: 'mus',
                        response: 124716,
                      ),
                      'vel': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'senectus': Union3<String, double, bool>.in1('purus'),
                          'laoreet': Union3<String, double, bool>.in1('odio'),
                          'donec': Union3<String, double, bool>.in1('dapibus'),
                          'velit': Union3<String, double, bool>.in2(
                            0.6833970266793148,
                          ),
                          'orci': Union3<String, double, bool>.in1('lobortis'),
                          'ullamcorper': Union3<String, double, bool>.in1(
                            'pharetra',
                          ),
                        }.lock,
                        path: 'interdum',
                        response: 'rhoncus',
                      ),
                      'adipiscing': (
                        auth: Defined(false),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in3($PUTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'suspendisse': Union3<String, double, bool>.in1(
                            'ultricies',
                          ),
                        }.lock,
                        path: 'curabitur',
                        response: false,
                      ),
                      'tortor': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'lorem': Union3<String, double, bool>.in1(
                            'convallis',
                          ),
                          'sapien': Union3<String, double, bool>.in2(
                            0.6050246358949473,
                          ),
                          'quam': Union3<String, double, bool>.in1('varius'),
                          'hendrerit': Union3<String, double, bool>.in2(
                            0.6504234183551268,
                          ),
                          'interdum': Union3<String, double, bool>.in2(
                            0.8572449590441225,
                          ),
                          'turpis': Union3<String, double, bool>.in2(
                            0.2784512411445065,
                          ),
                          'luctus': Union3<String, double, bool>.in2(
                            0.7787095143172351,
                          ),
                          'lorem': Union3<String, double, bool>.in1('varius'),
                          'tincidunt': Union3<String, double, bool>.in1(
                            'dictum',
                          ),
                        }.lock,
                        path: 'imperdiet',
                        response: 0.5507033856344776,
                      ),
                      'metus': (
                        auth: Defined(true),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in1($GETLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'cum': Union3<String, double, bool>.in1('pulvinar'),
                          'lectus': Union3<String, double, bool>.in1(
                            'molestie',
                          ),
                          'praesent': Union3<String, double, bool>.in2(
                            0.47943533686343076,
                          ),
                        }.lock,
                        path: 'est',
                        response: true,
                      ),
                      'dis': (
                        auth: Undefined(),
                        method:
                            Union4<
                              $GETLiteral,
                              $POSTLiteral,
                              $PUTLiteral,
                              $DELETELiteral
                            >.in2($POSTLiteral()),
                        params: <String, Union3<String, double, bool>>{
                          'sodales': Union3<String, double, bool>.in1('nulla'),
                          'nisl': Union3<String, double, bool>.in1('eleifend'),
                        }.lock,
                        path: 'mauris',
                        response: 0.38551971608056057,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.8893788741368651,
              window: Union3<$MinuteLiteral, $HourLiteral, $DayLiteral>.in2(
                $HourLiteral(),
              ),
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<
                          String,
                          Union4<
                            $StringLiteral,
                            $NumberLiteral,
                            $BooleanLiteral,
                            $DateLiteral
                          >
                        >
                        schema,
                      })
                    >{
                      'congue': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'fames',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'viverra',
                                      'arcu',
                                      'nec',
                                      'aliquam',
                                      'iaculis',
                                      'lacinia',
                                      'platea',
                                      'hac',
                                    ].lock,
                                    name: 'cum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'rhoncus',
                                      'ligula',
                                      'ridiculus',
                                      'metus',
                                    ].lock,
                                    name: 'commodo',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['ullamcorper'].lock,
                                    name: 'est',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'fringilla',
                                      'quam',
                                      'velit',
                                      'neque',
                                      'nec',
                                      'libero',
                                    ].lock,
                                    name: 'dolor',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'volutpat',
                                      'consectetur',
                                      'ut',
                                      'placerat',
                                      'ullamcorper',
                                      'dictum',
                                      'proin',
                                      'dignissim',
                                    ].lock,
                                    name: 'sodales',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'praesent',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'venenatis',
                                      'dis',
                                      'neque',
                                      'pulvinar',
                                      'suspendisse',
                                      'nullam',
                                    ].lock,
                                    name: 'habitasse',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'neque',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'convallis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'sed':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'pharetra':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'lacus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'dictumst':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'eu':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'magna':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'diam': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'suspendisse':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'lacinia':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'lacinia':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'sagittis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'vivamus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'lorem':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'adipiscing':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'eros':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'morbi':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'porttitor': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'neque',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'auctor',
                                      'cursus',
                                      'tortor',
                                      'gravida',
                                      'suscipit',
                                      'magna',
                                      'curabitur',
                                    ].lock,
                                    name: 'consectetur',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'diam',
                                      'vivamus',
                                      'mi',
                                      'euismod',
                                      'rhoncus',
                                      'senectus',
                                    ].lock,
                                    name: 'elementum',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'etiam',
                                      'vivamus',
                                      'magnis',
                                      'venenatis',
                                      'dapibus',
                                      'mus',
                                    ].lock,
                                    name: 'interdum',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'et',
                                      'potenti',
                                      'diam',
                                      'felis',
                                      'velit',
                                      'penatibus',
                                    ].lock,
                                    name: 'potenti',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'turpis',
                                      'orci',
                                      'sit',
                                      'habitasse',
                                      'tempor',
                                      'est',
                                      'quis',
                                      'mi',
                                      'imperdiet',
                                    ].lock,
                                    name: 'nascetur',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'sem',
                                      'varius',
                                      'morbi',
                                      'turpis',
                                      'laoreet',
                                    ].lock,
                                    name: 'senectus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'laoreet',
                                      'sit',
                                      'elementum',
                                      'enim',
                                    ].lock,
                                    name: 'at',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'lobortis',
                                      'interdum',
                                    ].lock,
                                    name: 'potenti',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'luctus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'dapibus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'consectetur':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'elementum':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'donec':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'ullamcorper':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'dictumst':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'feugiat':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'risus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'montes': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'vivamus',
                                      'sapien',
                                      'potenti',
                                      'augue',
                                      'quam',
                                      'amet',
                                      'mattis',
                                      'pretium',
                                    ].lock,
                                    name: 'venenatis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'feugiat',
                                      'phasellus',
                                      'hac',
                                      'lectus',
                                      'habitasse',
                                      'lorem',
                                      'semper',
                                      'lectus',
                                      'phasellus',
                                    ].lock,
                                    name: 'elementum',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'congue',
                                      'enim',
                                      'ac',
                                      'commodo',
                                      'porta',
                                    ].lock,
                                    name: 'mauris',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'turpis',
                                      'penatibus',
                                    ].lock,
                                    name: 'egestas',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'quam',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'pretium':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'ante':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'mus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'commodo':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'cursus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'arcu',
                                      'aliquet',
                                      'lacinia',
                                      'quis',
                                      'turpis',
                                      'posuere',
                                      'sociis',
                                    ].lock,
                                    name: 'magna',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'phasellus',
                                      'condimentum',
                                      'habitasse',
                                      'diam',
                                      'cursus',
                                      'dis',
                                      'aenean',
                                      'justo',
                                      'aliquet',
                                    ].lock,
                                    name: 'pretium',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'risus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'mauris':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'nisl':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'consectetur':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'magnis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'orci':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'lectus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'euismod':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                }
                                .lock,
                      ),
                      'lacinia': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'nulla',
                                      'ut',
                                      'magna',
                                      'placerat',
                                      'convallis',
                                      'nibh',
                                      'in',
                                    ].lock,
                                    name: 'cursus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['orci', 'diam'].lock,
                                    name: 'sagittis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'a',
                                      'ridiculus',
                                      'diam',
                                      'in',
                                      'enim',
                                      'aliquam',
                                      'viverra',
                                      'lacinia',
                                    ].lock,
                                    name: 'mus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'mattis',
                                      'viverra',
                                      'ridiculus',
                                      'quam',
                                      'orci',
                                      'nulla',
                                      'ante',
                                      'aliquet',
                                    ].lock,
                                    name: 'libero',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'massa':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'risus':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'iaculis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'tristique':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'hendrerit':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'varius':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'tincidunt':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                  'magnis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'magnis':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in3($BooleanLiteral()),
                                }
                                .lock,
                      ),
                      'semper': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'nunc',
                                      'lacinia',
                                      'commodo',
                                      'magna',
                                      'varius',
                                    ].lock,
                                    name: 'pulvinar',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'proin',
                                      'sed',
                                      'varius',
                                      'integer',
                                      'arcu',
                                      'duis',
                                      'ut',
                                      'enim',
                                    ].lock,
                                    name: 'non',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'dictum',
                                      'suspendisse',
                                      'fermentum',
                                      'mus',
                                    ].lock,
                                    name: 'dolor',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'eleifend',
                                      'quisque',
                                      'mattis',
                                      'donec',
                                      'laoreet',
                                      'mi',
                                      'facilisi',
                                      'mauris',
                                      'ante',
                                    ].lock,
                                    name: 'aliquet',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema:
                            <
                                  String,
                                  Union4<
                                    $StringLiteral,
                                    $NumberLiteral,
                                    $BooleanLiteral,
                                    $DateLiteral
                                  >
                                >{
                                  'massa':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                  'platea':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in2($NumberLiteral()),
                                  'platea':
                                      Union4<
                                        $StringLiteral,
                                        $NumberLiteral,
                                        $BooleanLiteral,
                                        $DateLiteral
                                      >.in1($StringLiteral()),
                                }
                                .lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery124.serialize(data);
      final value1 = DartValue.object(
        btreemapToBtreemapDartValue(btreemap: serialized),
      );
      final deserialized = tasksQuery124.deserialize(value1);
      expect(deserialized, data);
    }
  });
}
