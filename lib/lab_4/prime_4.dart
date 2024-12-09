import 'dart:io';

void main(){
  stdout.write('Enter n: ');
  int n = int.parse(stdin.readLineSync()!);
  int ans = check(n);
  if(ans == 1){
    print("$n is prime number");
  }
  else{
    print("$n is not a prime number");
  }
}

//method to check if num is prime or not
int check(int n){
  if (n <= 1) return 0;

  for(int i = 2 ; i<=n~/2 ; i++){
    if (n % i == 0) {
      return 0;
    }
  }
  return 1;
}