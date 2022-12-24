import 'dart:io';

void main() {
  stdout.write("Введите текст: ");
  String words = stdin.readLineSync()!;
  words = words.trim();
  List<String> count = words.split(" ");
  print("Start: $words :End");
  print("Количество слов равно ${count.length}");
}