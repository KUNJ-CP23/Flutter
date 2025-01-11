//WAP to calculate the angle between the hour and minute hands of a clock, where the hours
// and minutes are taken from the user. Example: Input: hours = 3, minutes = 15, Output: 7.5
// (angle between the hands is 7.5 degrees).

import 'dart:io';

void main(){
  stdout.write("Enter the hours: ");
  int hours = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the minutes: ");
  int minutes = int.parse(stdin.readLineSync()!);

  double minAngle = minutes*6;

  double hourAngle = ((hours%12) * 30) + (minutes / 60) * 30;

  double angle = (hourAngle - minAngle).abs();

  // Ensure the angle is always the smaller angle
  if (angle > 180) {
    angle = 360 - angle;
  }

  print("The angle between the hour and minute hands is: $angle degrees");
}