import 'dart:io';

void main() {
  List<int> nums = [];
  stdout.write("Введите числа, когда закончите отправьте пустую строку:\n");
  for (var i = 0; i >= 0; i++) {
    try {
      int a = int.parse(stdin.readLineSync()!);
      nums.add(a);
      nums.sort();
    } catch (a) {
      break;
    }
  }
  int a = nums.first;
  int b = nums.last;
  print(nums);
  print("Число $a - самый короткий элемент списка");
  print("Число $b - самый длинный элемент списка");
}