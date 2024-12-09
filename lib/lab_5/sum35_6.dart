import 'dart:io';

void main() {
  stdout.write("Enter the number of elements: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  print("Enter $n numbers:");
  for (int i = 0; i < n; i++) {
    stdout.write("Element ${i + 1}: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int sum = 0;
  for (int num in numbers) {
    if (num % 3 == 0 || num % 5 == 0) {
      sum += num;
    }
  }

  print("The sum of numbers divisible by either 3 or 5 is: $sum");
}
