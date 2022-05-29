// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:vizmo_api/vizmo_api.dart';

void main() {
  group('VizmoApi', () {
    test('can be instantiated', () {
      expect(VizmoApiClient(), isNotNull);
    });
  });
}
