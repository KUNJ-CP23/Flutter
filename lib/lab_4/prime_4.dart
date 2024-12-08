import 'dart:io';

void main(){
  stdout.write('Enter a: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Enter b: ');
  int b = int.parse(stdin.readLineSync()!);
  bool k = check_max(a, b);
  if(k){
    print("$a is greater");
  }
  else{
    print("$b is greater");
  }
}

//method to check greater from 2 numbers
bool check_max(int? a, int? b){
  return(a!>b!);
}