import 'dart:io';

void main() {
  while (true) {
    stdout.write("Enter the first number: ");
    double num1 = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter an operator (+, -, *, /): ");
    String operator = stdin.readLineSync()!;

    switch (operator) {
      case '+':
        print("The result is: ${num1 + num2}");
        break;
      case '-':
        print("The result is: ${num1 - num2}");
        break;
      case '*':
        print("The result is: ${num1 * num2}");
        break;
      case '/':
        if (num2 != 0) {
          print("The result is: ${num1 / num2}");
        } else {
          print("Not allowed!");
        }
        break;
      default:
        print("Invalid operator! Please use one of +, -, *, /.");
    }

    stdout.write("Do you want to perform another operation? (yes/no): ");
    String? choice = stdin.readLineSync();
    if (choice == null || choice.toLowerCase() != 'yes') {
      print("Exiting Calculator. Thank you!");
      break;
    }
  }
}
