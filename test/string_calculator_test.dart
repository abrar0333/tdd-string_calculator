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
}