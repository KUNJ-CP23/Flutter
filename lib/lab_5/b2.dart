void main() {
  String num = "35427";

  String result = findLargestOddSubstring(num);

  print('Largest odd integer substring: \$result');
}

String findLargestOddSubstring(String num) {
  // Traverse the string from the end to find the largest odd substring
  for (int i = num.length - 1; i >= 0; i--) {
    if (int.parse(num[i]) % 2 != 0) {
      return num.substring(0, i + 1);
    }
  }

  return ""; // Return empty string if no odd integer exists
}
