import 'dart:io';

void main(){
  print("Temperature Conversion");
  print("Enter Fahrenheit : ");
  double f = double.parse(stdin.readLineSync()!);
  double ?c = (5/9)*(f-32);
  print("${c} deg Fahrenheit");
}