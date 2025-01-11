void main() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  int uniqueCount = removeDuplicates(nums);

  print('Number of unique elements: \$uniqueCount');
  print('Modified array: \$nums');
}

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int writeIndex = 1; // Position to write the next unique element

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[writeIndex] = nums[i];
      writeIndex++;
    }
  }

  // Fill the remaining part with placeholders (optional, for clarity)
  for (int i = writeIndex; i < nums.length; i++) {
    nums[i] = -1; // Using -1 as a placeholder
  }

  return writeIndex;
}
