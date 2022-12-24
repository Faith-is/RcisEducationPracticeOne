import 'dart:io';

void main() {
  var fileNums = File("bin/height.txt");
  var contentFile = fileNums.readAsStringSync();
  List<String> nums = contentFile.split(" ");
  print(nums);
  int container = 0;
  for (int i = 0; i < nums.length; ++i) {
    for (int j = 1; j < nums.length; ++j) {
      int tempcontainer = 0;
      if (int.parse(nums[i]) < int.parse(nums[j])) {
        tempcontainer = int.parse(nums[i]) * (j - i);
      } else {
        tempcontainer = int.parse(nums[j]) * (j - i);
      }
      if (container < tempcontainer) {
        container = tempcontainer;
      } else {
        continue;
      }
    }
  }
  print(container);
}