//WAP to find the subarray with the largest sum from a given integer array. Example: Input: nums =
// [-2, 1, -3, 4, -1, 2, 1, -5, 4], Output: 6 (subarray [4, -1, 2, 1]).

import 'dart:io';

void main() {
  List<int> nums = [-2, 1, 3, -2, 6, -2, 1, -6, 4];

  // function ne called
  Map<String, Object> result = findlargest(nums);

  print("Largest Sum: ${result['maxSum']}");
  print("Subarray: ${result['subarray']}");
}

// function
Map<String, Object> findlargest(List<int> nums) {
  int maxSum = nums[0];
  List<int> subarray = [];

  for (int i = 0; i < nums.length; i++) {
    int currentSum = 0;

    for (int j = i; j < nums.length; j++) {
      currentSum += nums[j];

      // update maxSum and subarray if new max is found
      if (currentSum > maxSum) {
        maxSum = currentSum;
        //subList naam ni method che
        subarray = nums.sublist(i, j + 1); //subarray leva
      }
    }
  }

  return {
    'maxSum': maxSum,
    'subarray': subarray,
  };
}
