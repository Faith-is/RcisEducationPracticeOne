import 'dart:io';

void main() {
  File("bin//numsTask1.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(' ');
    print(nums);

    int min = int.parse(nums[0]);
    int it = 0;
    int mult = 1;
    for (int i = 0; i < nums.length; i++) {
      if (min > int.parse(nums[i])) {
        min = int.parse(nums[i]);
        it = i;
      }
    }
    for (int j = it + 1; j < nums.length; j++) {
      mult *= int.parse(nums[j]);
    }
    print("Минимальный элемент = $min");
    print("Произведение элементов, расположенных после минимального равно $mult");
  });
}