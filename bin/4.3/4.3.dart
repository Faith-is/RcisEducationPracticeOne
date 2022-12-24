import 'dart:io';

void main() {
  File("bin//numsTask3.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(',');
    print(nums);
    int it = 0;
    for (int i = 0; i < nums.length; i++) {
      if (int.parse(nums[i]) == 0) {
        it = i;
      }
    }
    int min = int.parse(nums[0]);
    int max = int.parse(nums[0]);
    for (int j = 0; j < it; j++) {
      if (min > int.parse(nums[j])) {
        min = int.parse(nums[j]);
      }
      if (max < int.parse(nums[j])) {
        max = int.parse(nums[j]);
      }
    }
    print(nums);
    print("Максимальный элемент = $max");
    print("Минимальный элемент = $min");
    if (max % min == 0) {
      int id = max ~/ min;
      print("После перебора чисел до 0");
      print("Отношение минимального и максимального элемента друг к другу равно = $id");
    } else {
      double dd = max / min;
      print("После перебора чисел до 0");
      print("Отношение минимального и максимального элемента друг к другу равно = $dd");
    }
  });
}