//WAP to calculate the angle between the hour and minute hands of a clock, where the hours
// and minutes are taken from the user. Example: Input: hours = 3, minutes = 15, Output: 7.5
// (angle between the hands is 7.5 degrees).

import 'dart:io';

void main(){
  stdout.write("Enter the hours: ");
  int hours = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the minutes: ");
  int minutes = int.parse(stdin.readLineSync()!);

  hours = hours % 12;
  double minuteAngle = minutes*6;

// // Calculate the angle of the hour hand
//   double hourAngle = (hours * 30) + (minutes / 60) * 30;
//
//   // Calculate the angle between the two hands
//   double angleBetweenHands = (hourAngle - minuteAngle).abs();
//
//   // Ensure the angle is always the smaller angle
//   if (angleBetweenHands > 180) {
//     angleBetweenHands = 360 - angleBetweenHands;
//   }
//$ anglebetween
  print("The angle between the hour and minute hands is:  degrees");
}