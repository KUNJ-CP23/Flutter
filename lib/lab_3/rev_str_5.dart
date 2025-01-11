import 'dart:io';

void main() {
  stdout.write("Enter a string to reverse: ");
  String str = stdin.readLineSync()!;

  String reversed = str.split(" ").reversed.join(" ");
  print("The reversed string is: $reversed");
}
