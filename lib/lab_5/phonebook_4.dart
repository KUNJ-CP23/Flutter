// import 'dart:io';
//
// void main(){
//   Map<String,String> phonebook = {};
//   bool b = true;
//   while(b){
//     stdout.write("Enter contact name: ");
//     String name = stdin.readLineSync()!;
//     stdout.write("Enter phone number: ");
//     String number = stdin.readLineSync()!;
//     phonebook[name] = number;
//   }
// }


import 'dart:io';

void main() {
  Map<String, String> phoneBook = {};

  print("\nPhonebook Menu:");
  print("1. Add a contact");
  print("2. Display all contacts");
  print("3. Exit");

  while (true) {

    stdout.write("Enter your choice (1-4): ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        //add contact
        stdout.write("Enter contact name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter phone number: ");
        String number = stdin.readLineSync()!;
        phoneBook[name] = number;
        print("Contact added successfully!");
        break;

      case 2:
      // display contacts
        if (phoneBook.isEmpty) {
          print("Phonebook is empty.");
        } else {
          print("All Contacts:");
          phoneBook.forEach((name, number) {
            print("$name: $number");
          });
        }
        break;

      case 2:
      // Exit the program
        print("Exiting the phonebook. Goodbye!");
        return;

      default:
        print("Invalid choice! Please enter a number between 1 and 4.");
    }
  }
}
