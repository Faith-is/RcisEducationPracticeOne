import 'dart:math';

void main() {
  List negnums = [];
  List posnums = [];
  double _generateDouble2(double minValue, double maxValue, int precision) {
    final random = new Random();
    final doubleRandom = minValue + (maxValue - minValue) * random.nextDouble();
    return double.parse(doubleRandom.toStringAsFixed(precision));
  }

  var rng = new Random();
  var list1 = List.generate(
      rng.nextInt(20), (int index) => _generateDouble2(-100.442, 100.432, 4));
  print(list1);
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] > 0) {
      posnums.add(list1[i]);
    }
    if (list1[i] < 0) {
      negnums.add(list1[i]);
    }
  }
  print("Массив c положительными числами \n $posnums");
  print("Массив c отрицательными числами \n $negnums");
}