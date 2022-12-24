import 'dart:io';

void main() {
  File("bin//numsTask2.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(';');
    print(nums);
    int it = 0;
    for (int i = 0; i < nums.length; i++) {
      if (double.parse(nums[i]) == 0) {
        it = i;
      }
    }
    double sum = 0;
    for (int j = 0; j < it; j++) {
      if (double.parse(nums[j]) > 0) {
        sum += double.parse(nums[j]);
      }
    }
    print("После перебора чисел до 0 \nCyммa положительных элементов получившейся последовательности равна = $sum");
  });
}
