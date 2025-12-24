import 'package:symmetric_difference/symmetric_difference.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    // SET
    final Set set1 = {1, 2, 3};
    final Set set2 = {1, 5, 3};
    final Set set3 = {1, 10, 0};

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(SymmetricSet.multiSymmetricDifference([set1, set2, set3]), isTrue);
    });
  });
}
