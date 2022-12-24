import 'dart:io';

void main() {
  try {
    stdout.write("Введите число: ");
    double a = double.parse(stdin.readLineSync()!);
    if (a % 10 == 0) {
      int i = a.toInt();
      print("Число $i четное и кратно 10");
    } else if (a % 10 != 0 && a % 2 == 0) {
      int s = a.toInt();
      print("Число $s четное и не кратно 10");
    } else {
      print("Число $a не четное и не кратно 10");
    }
  } catch (a) {
    print("Работа программы не выполнена успешно \n$a - некорректное число");
  }
}