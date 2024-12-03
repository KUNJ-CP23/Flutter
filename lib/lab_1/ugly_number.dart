import 'dart:io';

void main(){
  print("Ugly number");
  stdout.write("Enter num : ");
  int n = int.parse(stdin.readLineSync()!);
  int temp = n;

  // ~/ is integer division in dart

  while (n % 2 == 0) {
    n ~/= 2;
  }
  while (n % 3 == 0) {
    n ~/= 3;
  }
  while (n % 5 == 0) {
    n ~/= 5;
  }
  if(n == 1){
    print("${temp} is a ugly number");
  }
  else{
    print("${temp} is not a ugly number");
  }
}