import 'dart:io';

void main() {
  int summa = 0;
  int a, b;
  List<int> numbers = [];
  try {
    stdout.write("Введите положительное число a: ");
    a = int.parse(stdin.readLineSync()!);
    if (a > 0) {
      for (int i = 0; i < 4; i++) {
        stdout.write("Введите положительное число: ");
        b = int.parse(stdin.readLineSync()!);
        if (b > 0) {
          numbers.add(b);
        } else if (b < 0) {
          exit(0);
        }
      }
      for (int j = 0; j < numbers.length; j++) {
        if (numbers[j] % a == 0) {
          summa += numbers[j];
        }
      }
      print("Сумма чисел, делящихся на положительное число a нацело равна = $summa");
    }
  } catch (a) {
    print("Работа программы завершена. \nBы ввели некорректные данные");
  }
}
