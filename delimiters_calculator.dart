class DelimiterCalculator {
  // DelimiterCalculator();
  int gcd(int a, int b) {
    int temp;

    if (a < b) {
      temp = a;
      a = b;
      b = temp;
    }

    return (b != 0) ? gcd(b, a % b) : a;
  }

  int lcm(int a, int b) {
    return ((a / this.gcd(a, b)) * b).toInt();
  }

  List<int> simpleMultipliers(int a, int? divisor, List<int>? multipliers) {
    List<int>? _multipliers = multipliers ?? [];
    int _divisor = divisor ?? 2;

    // check if _divisor is simple
    while (!_isSimpleNumber(_divisor)) {
      _divisor++;
      return simpleMultipliers(a, _divisor, _multipliers);
    }

    if (a % _divisor == 0) {
      _multipliers.add(_divisor);
      int result = a ~/ _divisor;

      if (_isSimpleNumber(result)) {
        _multipliers.add(result);
      } else {
        return simpleMultipliers(result, 2, _multipliers);
      }
    } else {
      // increment divisor and then check if it is simple
      _divisor++;
      while (!_isSimpleNumber(_divisor)) {
        // increment untill we get next simple number
        _divisor++;
      }
      return simpleMultipliers(a, _divisor, _multipliers);
    }

    return _multipliers;
  }

  bool _isSimpleNumber(int a) {
    int _divisor = 2;
    if (a == 1 || a == 0) {
      return false;
    } else if (a == 2 || a == 3) {
      return true;
    } else {
      while (_divisor < a) {
        if (a % _divisor == 0) {
          return false;
        }
        _divisor++;
      }
      return true;
    }
  }
}
