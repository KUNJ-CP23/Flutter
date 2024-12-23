void main() {
  List<int> nums = [1, 2, 2, 3, 4, 4];

  List<int> uniqueNums = removeDuplicates(nums);

  print('Unique elements: \$uniqueNums');
}

List<int> removeDuplicates(List<int> nums) {
  Map<int, bool> seen = {};
  List<int> unique = [];

  for (int num in nums) {
    if (!seen.containsKey(num)) {
      seen[num] = true;
      unique.add(num);
    }
  }

  return unique;
}
