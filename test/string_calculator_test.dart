import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  final calc = StringCalculator();

  test('empty string returns 0', () {
    expect(calc.add(''), equals(0));
  });

  test('single number returns itself', () {
    expect(calc.add('1'), equals(1));
    expect(calc.add('42'), equals(42));
  });

  test('two numbers, comma separated', (){
    expect(calc.add('1,5'), equals(6));
  });

  test('handles newlines between numbers', () {
    expect(calc.add('1\n2,3'), equals(6));
  });

  test('custom single-character delimiter', () {
    expect(calc.add('//;\n1;2'), equals(3));
  });

  test('negative numbers throw with single negative', () {
    expect(
          () => calc.add('1,-2,3'),
      throwsA(predicate((e) => e is FormatException && e.message == 'negative numbers not allowed -2')),
    );
  });

  test('negative numbers throw listing all negatives', () {
    expect(
          () => calc.add('-1,-2,3'),
      throwsA(predicate((e) => e is FormatException && e.message == 'negative numbers not allowed -1,-2')),
    );
  });
}