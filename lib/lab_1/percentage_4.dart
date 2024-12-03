import 'dart:io';

void main(){
  int sum = 0;
  for(int i = 1 ; i<=5 ; i++){
    stdout.write("Enter marks of subject "+i.toString()+" : ");
    sum += int.parse(stdin.readLineSync()!);
  }
  double ?per = ((sum)/500)*100 ;
  stdout.write(per.toStringAsFixed(2)+"%");
}