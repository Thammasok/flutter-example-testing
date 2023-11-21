import 'package:flutter_example_testing/text.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'counter_test.mock.dart';

// https://pub.dev/packages/mocktail
void main() {
  group('Test print test function', () {
    test('return text', () {
      final mockCounter = MockCounter();

      when(() => mockCounter.getNumber()).thenReturn(42);

      var printInstance = Print();
      printInstance.counter = mockCounter;

      var result = printInstance.showText();

      // Verify that the getNumber method was called
      verify(() => mockCounter.getNumber()).called(1);

      // Verify that the result contains the mocked number
      expect(result, "this number 42");
    });
  });
}
