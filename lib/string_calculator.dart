class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final single = int.tryParse(numbers.trim());
    if (single != null) return single;

    return 0;
  }
}