//WAP to find the majority element in a given array, where the majority element is the one that
// appears more than [n / 2] times. You may assume that the majority element always exists in
// the array. Example: Input: nums = [3, 2, 3], Output: 3; Input: nums = [2, 2, 1, 1, 1, 2, 2], Output:2.

import 'dart:io';

void main() {
  stdout.write("Enter the size of the list: ");
  int size = int.parse(stdin.readLineSync()!);

  List<int> nums = [];
  print("Enter $size integers:");

  for (int i = 0; i < size; i++) {
    stdout.write("Enter integer ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    nums.add(num);
  }

  print(nums);

}
int findMajorityElement(List<int> nums) {
  Map<int, int> freqMap = {};

  // Populate the frequency map
  for (int num in nums) {
    if (freqMap.containsKey(num)) {
      freqMap[num] = freqMap[num]! + 1;
    } else {
      freqMap[num] = 1;
    }

    // Check if this number is the majority element
    if (freqMap[num]! > nums.length ~/ 2) {
      return num;
    }
  }
  throw Exception("No majority element found"); // This line assumes input is valid.
}

// void main() {
//   // Example input
//   List<int> nums1 = [3, 2, 3];
//   List<int> nums2 = [2, 2, 1, 1, 1, 2, 2];
//
//   print("Majority Element in nums1: ${findMajorityElement(nums1)}");
//   print("Majority Element in nums2: ${findMajorityElement(nums2)}");
// }
//
// int findMajorityElement(List<int> nums) {
//   int count = 0;
//   int candidate = 0;
//
//   // Boyer-Moore Voting Algorithm
//   for (int num in nums) {
//     if (count == 0) {
//       candidate = num;
//     }
//     count += (num == candidate) ? 1 : -1;
//   }
//
//   return candidate; // Assumes a majority element always exists
// }

