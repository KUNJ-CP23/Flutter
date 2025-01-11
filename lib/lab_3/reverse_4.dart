import 'dart:io';

void main() {
  stdout.write("Enter a number to reverse: ");
  int num = int.parse(stdin.readLineSync()!);

  int reverse = 0;
  while(num>0){
    int digit = num%10;
    reverse = reverse *10 + digit;
    num ~/= 10;
  }

  print("The reversed number is $reverse");
}
