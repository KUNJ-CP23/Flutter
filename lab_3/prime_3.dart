import 'dart:io';

void main() {
  stdout.write("Enter a number to check if it is prime: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num <= 1) {
    print("$num is not a prime number.");
    return;
  }

  bool isPrime = true;
  //  aanathi ~/ iteration ocha thay
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }
}
