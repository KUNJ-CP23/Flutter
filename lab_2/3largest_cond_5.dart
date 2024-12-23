import 'dart:io';

void main() {
  print("Largest of three numbers");
  stdout.write("Enter n1 : ");
  int n1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter n2 : ");
  int n2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter n3 : ");
  int n3 = int.parse(stdin.readLineSync()!);
  int largest = (n1 > n2 ? (n1>n3 ? n1:n3) : (n2>n3 ? n2:n3));
  stdout.write('Largest of three is : $largest');
}