import 'dart:io';

void main() {
  File("bin//nums.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(' ');
    print(nums);
    for (int i = 0; i < nums.length; i++) {
      if (double.parse(nums[i]) % 2 == 0) {
        nums.removeAt(i);
      }
    }
    print(nums);
  });
}