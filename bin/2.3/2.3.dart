import 'dart:io';

void main() {
  var nums = List.generate(4, (i) => List.filled(4, 1), growable: true);

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (i >= 1 && j >= 1) {
        nums[i][j] = nums[i - 1][j] + nums[i][j - 1];
      }
      stdout.write("${nums[i][j]} ");
    }
    print("");
  }
}