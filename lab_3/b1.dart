// WAP to find the element that appears only once in a non-empty array of integers, where every
// other element appears twice. The solution should have linear runtime complexity and use only
// constant extra space. Example: Input: nums = [2, 2, 1], Output: 1; Input: nums = [4, 1, 2, 1, 2],
// Output: 4; Input: nums = [1], Output: 1.

import 'dart:io';

void main() {
  stdout.write("Enter size: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> nums = [];
  print("Enter $n elements for the array:");

  for (int i = 0; i < n; i++) {
    stdout.write("Enter element $i: ");
    int element = int.parse(stdin.readLineSync()!);
    nums.add(element);
  }

  int eklu = 0;

  for (int num in nums) {
    eklu ^= num;
  }

  print('Element that appears only once: $eklu');
}
