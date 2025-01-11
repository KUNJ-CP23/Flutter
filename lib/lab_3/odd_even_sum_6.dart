import 'dart:io';

void main() {
  int sumEven = 0;
  int sumOdd = 0;

  while (true) {
    stdout.write("Enter a number (0 to quit): ");
    int num = int.parse(stdin.readLineSync()!);

    if (num == 0) {
      break;
    }

    if (num > 0 && num % 2 == 0) {
      sumEven += num;
    } else if (num < 0 && num % 2 != 0) {
      sumOdd += num;
    }
  }

  print("\nSum of all positive even numbers: $sumEven");
  print("Sum of all negative odd numbers: $sumOdd");
}
