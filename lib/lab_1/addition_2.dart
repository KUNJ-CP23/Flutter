import 'dart:io';

void main(){
  print("Addition of two numbers");
  print("Enter num1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter num2 : ");
  int num2 = int.parse(stdin.readLineSync()!);
  int ?ans = num1 + num2;
  print("Sum is : ${ans}");
}