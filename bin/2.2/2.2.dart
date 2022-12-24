import 'dart:io';

void main() {
  var list1 =
      List.generate(100, (int index) => (index * 2) + 1, growable: false);
  stdout.write(list1);
}