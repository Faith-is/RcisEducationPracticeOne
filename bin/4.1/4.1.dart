import 'dart:io';

void main() {
  try {
    print("Введите число n: ");
    int n = int.parse(stdin.readLineSync()!);
    int s = 3;
    int a = 1;
    while (s <= n) {
      a = a * s;
      s = s + 3;
    }
    print("Произведение натуральных чисел, кратных трём и не превышающих число $n, равно = $a");
  } catch (n) {
    print("Работа программы не выполнена успешно \n $n некорректное число.");
  }
}