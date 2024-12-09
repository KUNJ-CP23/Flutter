import 'dart:io';

void main() {
  int sum = 0;

  List <int> intlist = [];
  for (int i = 1; i <=5; i++) {
    stdout.write("Enter n" + i.toString() + " : ");
    int n = int.parse(stdin.readLineSync()!);
    intlist.add(n);
  }
  stdout.write(intlist);
}