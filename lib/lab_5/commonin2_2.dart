import 'dart:io';

void main() {
  // int s1 = int.parse(stdin.readLineSync()!);
  // int s2 = int.parse(stdin.readLineSync()!);
  // List <int> intlist1 = [];
  // List <int> intlist2 = [];
  // for (int i = 0; i <s1; i++) {
  //   stdout.write("Enter n" + i.toString() + " : ");
  //   int n = int.parse(stdin.readLineSync()!);
  //   intlist1.add(n);
  // }
  // for (int i = 0; i <s2; i++) {
  //   stdout.write("Enter n" + i.toString() + " : ");
  //   int n = int.parse(stdin.readLineSync()!);
  //   intlist2.add(n);
  // }
  stdout.write("Enter first list, separated by spaces: ");
  List<String> list1 = stdin.readLineSync()!.split(' ');

  stdout.write("Enter second list, separated by spaces: ");
  List<String> list2 = stdin.readLineSync()!.split(' ');

  List<String> common = list1.toSet().intersection(list2.toSet()).toList();
  print("Common : ${common}");
}
