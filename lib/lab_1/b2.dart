// WAP to check if a given positive integer is an ugly number (a number whose only prime factors are
// 2, 3, and 5). Example: Input: n = 6, Output: true (6 = 2 × 3); Input: n = 14, Output: false (14 includes
// the prime factor 7).

import 'dart:io';

void main(){
  print("Ugly number");
  stdout.write("Enter num : ");
  int n = int.parse(stdin.readLineSync()!);
  int temp = n;

  // ~/ is integer division in dart

  if (n <= 0) {
    print("Invalid ! Enter a positive number. Exiting the program.");
    return; // Stops the program
  }
  while (n % 2 == 0) {
    n ~/= 2;
  }
  while (n % 3 == 0) {
    n ~/= 3;
  }
  while (n % 5 == 0) {
    n ~/= 5;
  }
  if(n == 1){
    print("${temp} is a ugly number");
  }
  else{
    print("${temp} is not a ugly number");
  }
}