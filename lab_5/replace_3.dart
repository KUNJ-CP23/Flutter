import 'dart:io';

void main() {

  List <String> l1 = [];
  l1.add('Delhi');
  l1.add('Mumbai');
  l1.add('Bangalore');
  l1.add('Hyderabad');
  l1.add('Ahmedabad');
  stdout.write('Before replacing : ');
  stdout.write(l1);
  print("");
  int  i = l1.indexOf('Ahmedabad');
  l1[i] = 'Surat';
  stdout.write('After replacing : ');
  stdout.write(l1);
}