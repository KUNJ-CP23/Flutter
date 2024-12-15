//WAP to find the majority element in a given array, where the majority element is the one that
// appears more than [n / 2] times. You may assume that the majority element always exists in
// the array. Example: Input: nums = [3, 2, 3], Output: 3; Input: nums = [2, 2, 1, 1, 1, 2, 2], Output:2.

import 'dart:io';

void main() {
  stdout.write("enter the size of the array: ");
  int size = int.parse(stdin.readLineSync()!);

  List<int> nums = [];
  print("enter $size integers:");

  for (int i = 0; i < size; i++) {
    stdout.write("enter integer ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    nums.add(num);
  }

  int? majEle;
  int highcnt = 0;

  for (int i = 0; i < nums.length; i++) {
    int currCnt = 0;

    for (int j = 0; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        currCnt++;
      }
    }

    if (currCnt > highcnt) {
      highcnt = currCnt;
      majEle = nums[i];
    }
  }

  print('Majority element: $majEle');
  print('Repeated ${highcnt} times}');
}
