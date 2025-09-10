import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(''), equals(0));
  });
}