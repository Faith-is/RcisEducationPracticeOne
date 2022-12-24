import 'dart:io';

void main() {
  File("bin//numsTask3.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(',');
    int min = int.parse(nums[0]);
    int it = 0;
    int sum = 0;
    int c = 0;
    for (int i = 0; i < nums.length; i++) {
      if (min > int.parse(nums[i])) {
        min = int.parse(nums[i]);
        it = i;
      }
    }
    for (int j = 0; j <= it; j++) {
      sum += int.parse(nums[j]);
      c += 1;
    }
    print(nums);
    print("Минимальный элемент = $min");
    if (sum % c == 0) {
      int asum = sum ~/ c;
      print("Среднее арифметическое элементов расположенных, до минимального равно = $asum");
    } else {
      double dsum = sum / c;
      print("Среднее арифметическое элементов расположенных, до минимального равно = $dsum");
    }
  });
}