import 'dart:io';

void main() {
  try {
    stdout.write("Введите число a: ");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Введите число b: ");
    double b = double.parse(stdin.readLineSync()!);

    if (-1 <= a && a <= 3) {
      if (-2 <= b && b <= 4) {
        print("Точка c координатами ($a;$b) принадлежит заштрихованной области");
      } else {
        print("Точка c координатами ($a;$b) не принадлежит заштрихованной области");
      }
    } else {
      print("Точка c координатами ($a;$b) не принадлежит заштрихованной области");
    }
  } catch (e) {
    print("Вы вводите неправильные данные! \nError: $e не является числом \n3aвepшeниe программы.");
  }
}