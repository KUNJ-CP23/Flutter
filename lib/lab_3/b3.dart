import 'dart:io';

void main() {
  stdout.write("Enter size: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> array = [];
  print("Enter $n elements for the array:");

  for (int i = 0; i < n; i++) {
    stdout.write("Enter element $i: ");
    int element = int.parse(stdin.readLineSync()!);
    array.add(element);
  }

  stdout.write("Enter the element to insert: ");
  int element = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the position to insert at (0-based index): ");
  int position = int.parse(stdin.readLineSync()!);

  if (position < 0 || position > array.length) {
    print("Invalid position.");
  } else {
    array.insert(position, element);
    print("Modified array: $array");
  }
}
