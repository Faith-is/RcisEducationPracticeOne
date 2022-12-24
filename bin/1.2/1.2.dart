import 'dart:io';

void main() {
  List<int> data = [];
  stdout.write("Введите числа, когда закончите введите ноль:\n");
  int x = 1;
  try {
    for (int i = x; i != 0; i = x) {
      x = int.parse(stdin.readLineSync()!);
      data.add(x);
    }
  } catch (e) {
    print("Вы вводите неправильные данные! \nError: $e\n3aвepшeниe программы.");
  }
  data.removeLast();
  print("==============\n$data");
  int sum = 0;
  int mult = 1;
  double srarf = 0;
  for (int i = 0; i < data.length; ++i) {
    sum += data[i];
    mult *= data[i];
    srarf = sum / data.length;
  }
  print("Сумма = $sum; Произведение = $mult; srarf = $srarf");
}