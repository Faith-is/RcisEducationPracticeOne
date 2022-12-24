import 'dart:math';

void main() {
  Map<String, double> temp = {};
  List months = [
    'Январь',
    'Февраль',
    'Март',
    'Апрель',
    'Май',
    'Июнь',
    'Июль',
    'Август',
    'Сентябрь',
    'Октябрь',
    'Ноябрь',
    'Декабрь',
  ];
  var temp2 = List.generate(12, (i) => List.filled(30, 0), growable: true);
  List midMonths = [];
  int sum = 0;

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 30; j++) {
      var random = new Random();
      int a = random.nextInt(70) - 32;
      temp2[i][j] += a;
    }
  }

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 30; j++) {
      sum += temp2[i][j];
    }
    double mid = sum / 30;
    midMonths.add(mid);
  }

  for (int i = 0; i < 12; i++) {
    temp[months[i]] = midMonths[i];
  }
  print(temp);
}