void main() {
  List<int> nums1 = [4, 9, 5];
  List<int> nums2 = [9, 4, 9, 8, 4];

  List<int> result = findIntersection(nums1, nums2);

  print('Intersection of arrays: \$result');
}

List<int> findIntersection(List<int> nums1, List<int> nums2) {
  nums1.sort();
  nums2.sort();

  List<int> intersection = [];
  int i = 0, j = 0;

  while (i < nums1.length && j < nums2.length) {
    if (nums1[i] == nums2[j]) {
      intersection.add(nums1[i]);
      i++;
      j++;
    } else if (nums1[i] < nums2[j]) {
      i++;
    } else {
      j++;
    }
  }

  return intersection;
}
