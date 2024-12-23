//WAP to find all the prime numbers within a given range [start, end]. Example: Input: start = 10,
// end = 20, Output: [11, 13, 17, 19]; Input: start = 1, end = 10, Output: [2, 3, 5, 7].
import 'dart:io';

void main() {
  stdout.write("Enter start of the range: ");
  int start = int.parse(stdin.readLineSync()!);
  stdout.write("Enter end of the range: ");
  int end = int.parse(stdin.readLineSync()!);

  List<int> primes = [];

  for (int i = start; i <= end; i++) {
    if(isPrime(i)){
      primes.add(i);
    }
  }

  print("Prime numbers in the range [$start, $end]: $primes");
}

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
