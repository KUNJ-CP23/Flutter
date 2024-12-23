
void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  List<int> result = findTwoSum(nums, target);

  print('Indices of numbers that add up to target: \$result');
}

List<int> findTwoSum(List<int> nums, int target) {
  Map<int, int> numToIndex = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];

    if (numToIndex.containsKey(complement)) {
      return [numToIndex[complement]!, i];
    }

    numToIndex[nums[i]] = i;
  }

  throw Exception('No two sum solution');
}
