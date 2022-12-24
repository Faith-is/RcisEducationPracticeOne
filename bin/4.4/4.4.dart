import 'dart:io';

void main() {
  File("bin//numsTask4.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(' ');
    int c = 0;
    for (int i = 0; i < nums.length - 1; i++) {
      if (int.parse(nums[i]) == int.parse(nums[i + 1])) {
        c += 1;
      }
    }
    print(nums);
    print("Количество одинаковых рядом стоящих чисел равно = $c");
  });
}