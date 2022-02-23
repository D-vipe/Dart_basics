import 'decimal_to_binary.dart';
import 'delimiters_calculator.dart';

void main() {
  // FIRST TASK
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
  // FIRST TASK END

  // SECOND TASK
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
  // SECOND TASK END
}
