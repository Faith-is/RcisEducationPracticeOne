import 'dart:io';

void main() {
  var file = File("bin//wordsTask2.txt");
  var t = file.readAsStringSync();
  var txt = file.readAsLinesSync();
  print(t);
  String txtl = '';
  for (int i = 0; i < txt.length; i++) {
    txtl += txt[i];
    txtl += ' ';
  }
  print(txtl);
}