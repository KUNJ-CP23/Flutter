import 'dart:io';

void main(){
  print("Body Mass Index");
  stdout.write("Enter weight in pounds : ");
  double pounds = double.parse(stdin.readLineSync()!);
  stdout.write("Enter height in inches : ");
  double inches = double.parse(stdin.readLineSync()!);
  double ?h = inches*0.254;
  double ?bmi = ((pounds*0.453592)/(h*h))*100;
  stdout.write("BMI : "+bmi.toStringAsFixed(3));
}