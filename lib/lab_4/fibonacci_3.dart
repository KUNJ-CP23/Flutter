import 'dart:io';

void main(){
  stdout.write('Enter n: ');
  int n = int.parse(stdin.readLineSync()!);

  fibonacci(n);
}

//method to calculate fibonacci until n
void fibonacci(int n){
  int a = 0;
  int b = 1;

  for(int i=0 ; i<=n ; i++){
    stdout.write("$a ");
    int sum = a + b;
    a = b;
    b = sum;
  }
  print("");

}