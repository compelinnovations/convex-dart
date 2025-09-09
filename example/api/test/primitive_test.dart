import 'dart:convert';
import 'package:api/client.dart';
import 'dart:typed_data';
import 'package:convex_dart/convex_dart.dart';
import 'package:convex_dart/src/rust/dart_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';
import 'package:convex_dart/src/rust/dart_value/conversion.dart';

void main() {
  setUpAll(() async {
    await ConvexClient.init();
  });

  test('anyReturn', () async {
    final result = await anyReturn.execute(null);
    expect(result.body, "Hello");
  });
  test('objectReturn', () async {
    final result = await objectReturn.execute(null);
    expect(result.i, "Hello");
  });
  test('recordReturn', () async {
    final result = await recordReturn.execute(null);
    expect(result.body, {"i": "Hello"}.lock);
  });
  test('idReturn', () async {
    final result = await idReturn.execute(null);
    expect(result.body, TasksId("j579e7k3cjcwj3jmzf9be7rva97q5w2c"));
  });
  test('arrayReturn', () async {
    final result = await arrayReturn.execute(null);
    expect(result.body, ["Hi", "Hello"].lock);
  });
  test('strReturn', () async {
    final result = await strReturn.execute(null);
    expect(result.body, "Hi");
  });
  test('numReturn', () async {
    final result = await numReturn.execute(null);
    expect(result.body, 1.0);
  });
  test('boolReturn', () async {
    final result = await boolReturn.execute(null);
    expect(result.body, true);
  });
  test('int64Return', () async {
    final result = await int64Return.execute(null);
    expect(result.body, 1);
  });
  test('bytesReturn', () async {
    final result = await bytesReturn.execute(null);
    expect(
      result.body,
      Uint8ListWithEquality.fromList([1, 2, 3, 4, 5, 6, 7, 8]),
    );
  });
  test('nullReturn', () async {
    await nullReturn.execute(null);
    // expect(result, null); Cannot test this because it is a void return
  });
  test('unionReturn', () async {
    final result = await unionReturn.execute(null);
    expect(result.body, "Hi");
  });
}
