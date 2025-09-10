class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final single = int.tryParse(numbers.trim());
    if (single != null) return single;

    final parts = _splitNumbers(numbers, [',', '\n']);
    var sum = 0;
    for (final p in parts) {
      final s = p.trim();
      if (s.isEmpty) continue;
      final v = int.tryParse(s);
      if (v == null) {
        throw FormatException('Invalid number: $s');
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