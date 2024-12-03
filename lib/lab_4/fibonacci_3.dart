import 'dart:io';

void main(){
  stdout.write('Enter n: ');
  int n = int.parse(stdin.readLineSync()!);

  int k = fibonacci(n);
    print("Sum of fibonacci until $n is $k");

}

//method to calculate fibonacci until n
int fibonacci(int? n){
  int sum;
  int a = 0;
  int b = 1;
  while(b!=n){

  }
  return(sum);
}