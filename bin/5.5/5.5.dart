import 'dart:io';

void main() {
  File("bin//numsTask5.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(' ');
    int min = int.parse(nums[0]);
    int max = int.parse(nums[0]);
    int imin = 0;
    int imax = 0;
    int sum = 0;
    int c = 0;
    for (int j = 0; j < nums.length; j++) {
      if (min > int.parse(nums[j])) {
        min = int.parse(nums[j]);
        imin = j;
      }
      if (max < int.parse(nums[j])) {
        max = int.parse(nums[j]);
        imax = j;
      }
    }
    print(nums);
    print("Максимальный элемент = $max");
    print("Минимальный элемент = $min");
    if (imin < imax) {
      for (int k = imin; k <= imax; k++) {
        sum += int.parse(nums[k]);
        c += 1;
      }
      if (sum % c == 0) {
        int asum = sum ~/ c;
        print("Cpeднee арифметическое элементов расположенных между минимальным и максимальным равно $asum");
      } else {
        double dsum = sum / c;
        print("Среднее арифметическое элементов расположенных между минимальным и максимальным равно = $dsum");
      }
    } else {
      for (int k = imax; k <= imin; k++) {
        sum += int.parse(nums[k]);
        c += 1;
      }
      if (sum % c == 0) {
        int asum = sum ~/ c;
        print("Cpeднee арифметическое элементов расположенных между минимальным и максимальным равно $asum");
      } else {
        double dsum = sum / c;
        print("Среднее арифметическое элементов расположенных между минимальным и максимальным равно = $dsum");
      }
    }
  });
}