import 'dart:io';

void main() {
  var list1 = List.generate(100, (int index) => index * 2, growable: false);
  var reverse = List.from(list1.reversed);
  stdout.write(reverse);
}