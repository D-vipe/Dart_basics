import 'decimal_to_binary.dart';
import 'delimiters_calculator.dart';
import 'num_helper.dart';
import 'point.dart';
import 'extensions.dart';
import 'user_types.dart';

void main() {
  final delimiterCalc = DelimiterCalculator();
  final numHelper = NumHelper();
  final decimalConverter = DecimalConverter();
  final pointClass = Point(10, 15, 12);

  print(' ');
  print(' ');

  // FIRST TASK
  print('===== FIRST TASK =====');

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
  String findNums1 = 'croc mango 1 1.2 5 111.5 bash profile';
  // String findNums1 = 'croc mango tangerine bash profile';

  List<num> res = numHelper.searchStringNumbers(findNums1);
  print('$findNums1 searching numbers: ${res.length > 0 ? res : 'no results'}');
  print('===== THIRD TASK END =====');
  // THIRD TASK END

  print(' ');
  print(' ');

  // FOURTH TASK
  print('===== FOURTH TASK =====');
  List<String> collectionExample4 = [
    'hey',
    'yoU',
    'Bro',
    'tickle',
    'анчоус',
    'hey',
    'you',
    'bro',
    'tickle',
    'анчоус',
    'hey',
    'you',
    'bro',
    'tickle',
    'анчоус',
    'bro',
    'bRo',
    'Tickle',
  ];
  print(
      'Counting times words are encounterd in the following list: $collectionExample4 ....');
  print('the result: ${numHelper.countRepeatedWords(collectionExample4)}');
  print('===== FOURTH TASK END =====');
  // FOURTH TASK END

  print(' ');
  print(' ');

  // FIFTH TASK
  print('===== FIFTH TASK =====');
  List<String> collectionExample5 = [
    'one',
    'yoU',
    'four',
    'два',
    'cat',
    'hey',
    'fish',
    'zero',
    'zero',
    'ноль',
    'three',
    'seven',
    'eight',
    'шесть',
    'car',
    'newspaper',
    '1',
    '9',
  ];
  print(
      'Searching distinct numbers in the following list: $collectionExample5 ....');
  print('the result: ${numHelper.searchDistinctNumbers(collectionExample5)}');
  print('===== FIFTH TASK END =====');
  // FIFTH TASK END

  print(' ');
  print(' ');

  // SIXTH TASK
  print('===== SIXTH TASK =====');
  final distanceBetween = pointClass.distanceTo(Point(0, 2, 0));
  print('Distance between: $distanceBetween');
  print(
      'Triangle square: ${pointClass.calcTriangleSquare(Point(10, 0, 1.5), Point(0, 2, 3), Point(0, 0, 0))}');
  print('===== SIXTH TASK END =====');
  // SIXTH TASK END

  print(' ');
  print(' ');

  // SEVENTH TASK
  print('===== SEVENTH TASK =====');
  int degree = 3;
  double randomNum = 125;
  try {
    print(
        '$degree root of $randomNum is ${randomNum.mathRoot(degree, randomNum)}');
  } on ArgumentError catch (e) {
    print(e.message);
  } catch (e) {
    print('Exception was thrown');
  }

  print('===== SEVENTH TASK END =====');
  // SEVENTH TASK END

  print(' ');
  print(' ');

  // EIGHTH TASK
  print('===== EIGHTH TASK =====');

  final AdminUser newAdmin = AdminUser('james@gmail.com');
  final UserManager hrAccount = UserManager();

  // add users to manager's list
  hrAccount.bulkAddUsers([
    GeneralUser('test1@email.com'),
    GeneralUser('test2@email.com'),
    AdminUser('admin@gmail.com'),
    GeneralUser('test3@email.com'),
    GeneralUser('test4@email.com'),
    GeneralUser('test5@email.com'),
    AdminUser('admin@yandex.ru'),
    GeneralUser('test6@email.com'),
    GeneralUser('test7@email.com'),
    User('test8@gmail.ru')
  ]);

  try {
    String mailSys = newAdmin.getMailSystem();
    print('Check mail system for ${newAdmin.email} \n $mailSys');

    hrAccount.addUser(GeneralUser('johndoe@rambler.com'));
    hrAccount.deleteUser('admin@yandex.ru');

    hrAccount.listAllEmails();
  } on ArgumentError catch (e) {
    print(e.message);
  } catch (e) {
    print('Exception was thrown');
  }

  print('===== EIGHTH TASK END =====');
  // EIGHTH TASK END
}
