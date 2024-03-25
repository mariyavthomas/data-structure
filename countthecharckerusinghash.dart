Map<String, int> countCharacters(String input) {
  Map<String, int> charCount = {};

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  return charCount;
}

void main() {
  String input = "mariya";
  Map<String, int> charCounts = countCharacters(input);

  // Display character counts
  charCounts.forEach((char, count) {
    print("$char: $count");
  });
}




























