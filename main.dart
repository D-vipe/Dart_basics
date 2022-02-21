import 'delimiters_calculator.dart';

void main() {
  // First task
  // Greatest  common divisor
  int firstNumGcd = 15;
  int secondNumGcd = 20;
  final delimiterCalc = DelimiterCalculator();
  int divisor1 = delimiterCalc.gcd(firstNumGcd, secondNumGcd);
  print('Greatest common divisor for 15 and 20: $divisor1');

  // Leasst common multiple
  int firstNumLcm = 15;
  int secondNumLcm = 25;
  int multiple1 = delimiterCalc.lcm(firstNumLcm, secondNumLcm);
  print('Least common multiple for 15 and 30: $multiple1');

  // Simple multipliers
  int multipliersVal = 120;
  List<int> multipliersRes =
      delimiterCalc.simpleMultipliers(multipliersVal, null, null);
  print('Simple multipliers for $multipliersVal:');
  print(multipliersRes);
}
