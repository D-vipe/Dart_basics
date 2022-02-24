import 'decimal_to_binary.dart';
import 'delimiters_calculator.dart';
import 'num_helper.dart';

void main() {
  print(' ');
  print(' ');

  // FIRST TASK
  print('===== FIRST TASK =====');
  final delimiterCalc = DelimiterCalculator();

  // Greatest  common divisor
  int firstNumGcd = 15;
  int secondNumGcd = 20;
  print(
      'Greatest common divisor for $firstNumGcd and $secondNumGcd: ${delimiterCalc.gcd(firstNumGcd, secondNumGcd)}');

  // Least common multiple
  int firstNumLcm = 15;
  int secondNumLcm = 25;
  print(
      'Least common multiple for $firstNumLcm and $secondNumLcm: ${delimiterCalc.lcm(firstNumLcm, secondNumLcm)}');

  // Simple multipliers
  int multipliersVal = 120;
  print(
      'Simple multipliers for $multipliersVal: ${delimiterCalc.simpleMultipliers(multipliersVal, null, null)}');
  print('===== FIRST TASK END =====');
  // FIRST TASK END

  print(' ');
  print(' ');

  // SECOND TASK
  print('===== SECOND TASK =====');
  final decimalConverter = DecimalConverter();
  // Convert  decimal to binary
  int decimalToConvert = 246;
  print(
      '$decimalToConvert to binary is ${decimalConverter.convertToBinary(decimalToConvert, null)}');

  // Convert binary to decimal
  // String binaryToConvert = '10011011';
  String binaryToConvert = '11110110';
  print(
      '$binaryToConvert to decimal is ${decimalConverter.convertToDecimal(binaryToConvert)}');
  print('===== SECOND TASK END =====');
  // SECOND TASK END

  print(' ');
  print(' ');

  // THIRD TASK
  print('===== THIRD TASK =====');
  final numHelper = NumHelper();
  String findNums1 = 'croc mango 1 1.2 5 111.5 bash profile';
  // String findNums1 = 'croc mango tangerine bash profile';

  List<num> res = numHelper.searchStringNumbers(findNums1);
  print('$findNums1 searching numbers: ${res.length > 0 ? res : 'no results'}');
  print('===== THIRD TASK END =====');
  // THIRD TASK END

  print(' ');
  print(' ');
}
