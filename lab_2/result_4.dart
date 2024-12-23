import 'dart:io';

void main() {
  int sum = 0;
  for(int i = 1 ; i<=5 ; i++){
    //stdout.write("Enter marks of subject "+i.toString()+" : ");
    stdout.write("Enter marks of subject $i : ");
    sum += int.parse(stdin.readLineSync()!);
  }
  double ?percentage = ((sum)/500)*100 ;

  String resultClass;
  if (percentage < 35) {
    resultClass = "Fail";
  } else if (percentage < 45) {
    resultClass = "Pass Class";
  } else if (percentage < 60) {
    resultClass = "Second Class";
  } else if (percentage < 70) {
    resultClass = "First Class";
  } else {
    resultClass = "Distinction";
  }

  print("Percentage: ${percentage.toStringAsFixed(2)}%");
  print("Class: $resultClass");
}
