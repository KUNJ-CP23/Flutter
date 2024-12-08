import 'dart:io';

void main() {
  stdout.write("Enter the starting number: ");
  int s = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the ending number: ");
  int e = int.parse(stdin.readLineSync()!);

  print("Numbers divisible by 2 but not divisible by 3 between $s and $e:");

  for (int i = s; i <= e; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      print(i);
    }
  }
}
