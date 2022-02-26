extension MathExtension on num {
  double _mabs(double x) {
    return (x < 0) ? -x : x;
  }

  num mathRoot(int mathDegree, double number) {
    if (mathDegree <= 0) {
      throw ArgumentError('Степень должна быть положительным числом!');
    }
    double eps = 0.00001; // погрешность
    double root = number / mathDegree; // начальное приближение корня
    double rn = number;

    while (_mabs((root - rn)) >= eps) {
      rn = number;

      for (int i = 1; i < mathDegree; i++) {
        rn = rn / root;
      }
      root = double.parse((0.5 * (rn + root)).toStringAsFixed(5));
    }

    return root;
  }
}
