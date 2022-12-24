import 'dart:io';

void main() {
  File("bin//wordsTask1.txt").readAsString().then((String contents) {
    List words = contents.split(" ");
    print(words);
    for (int i = 0; i < words.length; i++) {
      if (words[i].length % 2 != 0) {
        print(words[i]);
      }
    }
  });
}