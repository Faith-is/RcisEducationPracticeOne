import 'dart:io';

void main() {
  File("bin//numsTask4.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(' ');
    int max = int.parse(nums[0]);
    int sum = 0;
    int c = 0;
    for (int j = 0; j < nums.length; j++) {
      if (max < int.parse(nums[j])) {
        max = int.parse(nums[j]);
      }
    }
    for (int i = 0; i < nums.length; i++) {
      if (int.parse(nums[i]) == max - 1) {
        sum += int.parse(nums[i]);
        c += 1;
      }
    }
    print(nums);
    print("Максимальный элемент = $max");
    print("Сумма элементов, отличающихся от максимального на 1 равна = $sum");
    print("Количество элементов, отличающихся от максимального на 1 равно = $c");
  });
}