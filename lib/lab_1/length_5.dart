import 'dart:io';

void main(){
  print("Length conversion : metres to feet");
  stdout.write("Enter meters : ");
  double meters = double.parse(stdin.readLineSync()!);
  double ?feet = meters * 3.2808;
  stdout.write(feet.toStringAsFixed(3)+" feet");
}