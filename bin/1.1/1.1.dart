import 'dart:io';
import 'dart:math';

void main() {
  List<int> data = List.generate(10, (i) => Random().nextInt(50));
  stdout.write(data);
  int min = data[0];
  int ind = 0;
  for (int i = 0; i < data.length; ++i) {
    if (min > data[i]) {
      min = data[i];
      ind = i;
    }
  }
  print("\nминимaльнoe число = $min\nиндeкc - $ind ");
}
