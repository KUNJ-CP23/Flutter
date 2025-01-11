import 'dart:io';

void main() {
  print("Variables");
  //! atle null value check karva mate, ? null chalva dey
  int? a = null;
  a = 5;
  int b = a!;
  int c = int.parse(stdin.readLineSync()!);
  stdout.write("${a} ${b} ${c}");
  print("");
  double d = double.parse(stdin.readLineSync()!);
  stdout.write(d);
  print("");
  String s = stdin.readLineSync()!;
  stdout.write(s);
}
