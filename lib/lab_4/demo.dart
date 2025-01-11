import 'dart:io';
void named({int? a,int? b}){
  print('named parameter : a:$a & b:$b');
}
void positional(int a, int b){
  print("Positional parameter : a:$a & b:$b");
}
void def([int a = 3,int b = 2]){
print("default parameter : a:$a & b:$b");
}
void main(){
  named(a:6, b:9);
  positional(3, 9);
  def();
}