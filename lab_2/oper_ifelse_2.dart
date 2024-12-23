import 'dart:io';

void main(){
  print("Operation on two numbers");
  print("Enter num1 : ");
  double n1 = double.parse(stdin.readLineSync()!);
  print("Enter num2 : ");
  double n2 = double.parse(stdin.readLineSync()!);
  print("Enter operator : ");
  String s = stdin.readLineSync()!;
  double ?ans = 0;

  print("IF ELSE block");
  if(s == '+'){
    ans = (n1+n2);
    stdout.write("Sum : ${ans}");
  }
  else if (s == '-'){
    ans = (n1-n2);
    stdout.write("Difference : ${ans}");
  }
  else if (s == '*'){
    ans = (n1*n2) as double?;
    stdout.write("Product : ${ans}");
  }
  else if (s == '/'){
    ans = (n1/n2) as double?;
    stdout.write("Division : ${ans}");
  }
  else{
    stdout.write("Enter valid operator");
  }

  print("SWITCH CASE block");
  switch(s){
    case '+':{
      ans = (n1+n2) as double?;
      stdout.write("Sum : ${ans}");
    }break;
    case '-':{
      ans = (n1-n2) as double?;
      stdout.write("Difference : ${ans}");
    }break;
    case '*':{
      ans = (n1*n2) as double?;
      stdout.write("Product : ${ans}");
    }break;
    case '/':{
      ans = (n1/n2) as double?;
      stdout.write("Division : ${ans}");
    }break;
    default: {
      stdout.write("Enter valid operator");
    } break;
  }
}