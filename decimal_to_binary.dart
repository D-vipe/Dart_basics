import 'dart:math';

class DecimalConverter {
  final int _delimiter = 2;

  String convertToBinary(int a, List<int>? prevValues) {
    List<int> binaryList = prevValues ?? [];
    late String converted;

    int remainder = a % this._delimiter;
    int result = (a - remainder) ~/ this._delimiter;
    binaryList.add(remainder);

    if (result >= 1) {
      return convertToBinary(result, binaryList);
    }

    converted = binaryList.reversed.join('');

    return converted;
  }

  int convertToDecimal(String binary) {
    int res = 0;
    List<String> binaryArr = binary.split('');

    if (binaryArr.length > 0) {
      // first step - evaluate exponents of 2 according to binaryArr. Reverse array to make calculation easier
      List<String> binaryArrRev = List.from(binaryArr.reversed);
      // List<int> exponentResults = [];
      int arrLength = binaryArrRev.length;

      for (var i = 0; i < arrLength; i++) {
        int calculated = pow(2, i).toInt();
        // exponentResults.add(calculated);

        res += (calculated * int.parse(binaryArrRev[i]));
      }
    }
    return res;
  }
}
