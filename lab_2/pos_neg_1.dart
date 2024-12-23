import 'dart:io';

void main(){
  print("Addition of two numbers");
  print("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  if(n>0 || n==0){
    print("${n} is positive");
  }
  else{
    print("${n} is negative");
  }

}