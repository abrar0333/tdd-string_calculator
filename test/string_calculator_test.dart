import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(''), equals(0));
  });

  test('single number returns itself', () {
    final calc = StringCalculator();
    expect(calc.add('1'), equals(1));
    expect(calc.add('42'), equals(42));
  });
}