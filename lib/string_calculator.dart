class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String nums = numbers;
    List<String> delimiters = [',', '\n'];

    if (nums.startsWith('//')) {
      final newlineIndex = nums.indexOf('\n');
      if (newlineIndex == -1) {
        throw FormatException('Invalid input: missing newline after delimiter declaration');
      }
      final delimiterSpec = nums.substring(2, newlineIndex);
      nums = nums.substring(newlineIndex + 1);

      final bracketPattern = RegExp(r'\[([^\]]+)\]');
      final matches = bracketPattern.allMatches(delimiterSpec).toList();
      if (matches.isNotEmpty) {
        delimiters = matches.map((m) => m.group(1)!).toList();
      } else {
        delimiters = [delimiterSpec];
      }
      if (!delimiters.contains('\n')) delimiters.add('\n');
    }

    final parts = _splitNumbers(nums, delimiters);

    final negatives = <int>[];
    var sum = 0;
    for (final p in parts) {
      final s = p.trim();
      if (s.isEmpty) continue;
      final v = int.tryParse(s);
      if (v == null) {
        throw FormatException('Invalid number: $s');
      }
      if (v < 0) negatives.add(v);
      sum += v;
    }

    if (negatives.isNotEmpty) {
      throw FormatException('negative numbers not allowed ${negatives.join(',')}');
    }

    return sum;
  }

  List<String> _splitNumbers(String input, List<String> delimiters) {
    final pattern = delimiters.map(RegExp.escape).join('|');
    return input.split(RegExp(pattern));
  }
}