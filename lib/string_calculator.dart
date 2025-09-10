class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final single = int.tryParse(numbers.trim());
    if (single != null) return single;

    final parts = numbers.split(',');
    var sum = 0;
    for (final p in parts) {
      final v = int.tryParse(p.trim());
      if (v == null) {
        throw FormatException('Invalid number: $p');
      }
      sum += v;
    }
    return sum;
  }

  List<String> _splitNumbers(String input, List<String> delimiters) {
    final pattern = delimiters.map(RegExp.escape).join('|');
    return input.split(RegExp(pattern));
  }

}