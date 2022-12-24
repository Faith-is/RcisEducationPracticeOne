import 'dart:math';

void main() {
  var temp = List.generate(12, (i) => List.filled(30, 0), growable: true);
  List month = [];
  double sum = 0;

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 30; j++) {
      var random = new Random();
      int a = random.nextInt(70) - 32;
      temp[i][j] += a;
    }
  }

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 30; j++) {
      sum += temp[i][j];
    }
    double mid = sum / 30;
    month.add(mid.toStringAsFixed(2));
  }
  month.sort();
  print(month);
}