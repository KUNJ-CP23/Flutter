// import 'dart:io';
//
// void main() {
//   Map<String, Object?> friends = {};
//
//   while (true) {
//     stdout.write("Enter contact name: ");
//     String name = stdin.readLineSync()!;
//
//   }
//
// }

import 'dart:io';

class Friend {
  String name;
  String age;
  String email;

  Friend(
      this.name,
      this.age,
      this.email
      );
  void displayDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Email: $email");
  }
}

void main(){
  Map<String, Friend> phoneBook = {
    "Nidhi": Friend("Nidhi", "19", "nidhi@example.com"),
    "Het": Friend("Het", "18", "hettt@example.com"),
    "Palak": Friend("Palak", "20", "paalak@example.com"),
  };

  while(true){
    print("\nFriend Search Menu:");
    print("1. Search for a friend's details");
    print("2. Exit");
    stdout.write("Enter 1 for searching and 2 for exiting the search : ");
    int choice = int.parse(stdin.readLineSync()!);   // <-- formatexecption throw kare che aa
    //String? input = stdin.readLineSync();

    if (choice == 1) {
      stdout.write("Enter the friend's name to search: ");
      String name = stdin.readLineSync()!;
      //check karo aavo friend che k nay
      if(phoneBook.containsKey(name)){
        print("\nFriend Details:");
        phoneBook[name]!.displayDetails();
      }
      else{
        print("Friend not found");
      }
    }
    else if (choice == 2) {
      print("Exiting the program!");
      break;
    }
    else {
      print("Invalid choice. Please try again.");
    }

  }
}