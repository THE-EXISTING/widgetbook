import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:widgetbook_generator/code_generators/instances/instance.dart';
import 'package:widgetbook_generator/code_generators/properties/property.dart';

import '../instance_helper.dart';

class EmptyInstance extends Instance {
  EmptyInstance()
      : super(
          name: 'EmptyInstance',
          properties: [],
        );
}

class PropertyInstance extends Instance {
  PropertyInstance({
    required bool trailingComma,
  }) : super(
          name: 'PropertyInstance',
          properties: [
            Property.double(key: 'p1', value: 10),
            Property.string(key: 'p2', value: 'value')
          ],
          trailingComma: trailingComma,
        );
}

void main() {
  group(
    '$Instance',
    () {
      testName(
        'EmptyInstance',
        instance: EmptyInstance(),
      );

      test(
        '.toCode() returns correct code with no parameters',
        () {
          final instance = EmptyInstance();

          expect(
            instance.toCode(),
            equals('EmptyInstance()'),
          );
        },
      );

      test(
        '.toCode() return correct code with parameters',
        () {
          final instance = PropertyInstance(trailingComma: false);

          expect(
            instance.toCode(),
            equals("PropertyInstance(p1: 10.0, p2: 'value')"),
          );
        },
      );

      test(
        '.toCode() return correct code with parameters and trailing comma',
        () {
          final instance = PropertyInstance(trailingComma: true);

          expect(
            instance.toCode(),
            equals("PropertyInstance(p1: 10.0, p2: 'value',)"),
          );
        },
      );
    },
  );
}
