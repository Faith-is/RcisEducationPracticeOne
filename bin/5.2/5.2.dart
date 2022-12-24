import 'dart:io';

void main() {
  var result = File("bin//numstask(2).txt").openWrite();
  File("bin//numsTask2.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(';');
    print(nums);
    bool sort = false;
    while (!sort) {
      sort = true;
      for (int i = 0; i < nums.length - 1; i++) {
        if (double.parse(nums[i]) > double.parse(nums[i + 1])) {
          var temp = nums[i];
          nums[i] = nums[i + 1];
          nums[i + 1] = temp;
          sort = false;
        }
      }
    }
    print(nums);
    result.write(nums.toString());
  });
}