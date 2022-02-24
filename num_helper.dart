class NumHelper {
  static const _humanNumbers = {
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
    'zero': 0,
    'один': 1,
    'два': 2,
    'три': 3,
    'четыре': 4,
    'пять': 5,
    'шесть': 6,
    'семь': 7,
    'восемь': 8,
    'девять': 9,
    'ноль': 0,
  };

  List<num> searchStringNumbers(String string) {
    // split given string to get list
    List<String> dataArr = string.split(' ');
    List<num> resultList = [];

    if (dataArr.isNotEmpty) {
      dataArr.forEach((element) {
        var parseRes = num.tryParse(element);
        if (parseRes != null) {
          resultList.add(parseRes);
        }
      });
    }

    return resultList;
  }

  // This method runs through all words in a list and counts times they are encounterd
  // all words are transformed to lower case. This wasn't specidied in the task, but seems to be legit
  Map<String, int> countRepeatedWords(List<String> wordCollection) {
    Map<String, int> result = {};

    wordCollection.forEach((word) {
      result[word.toLowerCase()] =
          this._countWordRepeats(word.toLowerCase(), wordCollection);
    });

    return result;
  }

  // Private method-helper
  int _countWordRepeats(String needle, List<String> list) {
    int res = 0;

    list.forEach((word) {
      if (word.toLowerCase() == needle) {
        res++;
      }
    });

    return res;
  }

  // This method runs through list of string and tries to evaluate numbers
  // to make it more effective, we will tryParse string first, in case there will be
  // strings with numbers by default
  Set<int> searchDistinctNumbers(List<String> list) {
    Set<int> res = {};

    // check if string parses to int
    list.forEach((word) {
      int? intRes = int.tryParse(word);
      if (intRes != null) {
        res.add(intRes);
      } else {
        // check if word coincides const map of the class
        // transform to lowercase to increase posibilities
        if (NumHelper._humanNumbers[word.toLowerCase()] != null) {
          res.add(NumHelper._humanNumbers[word.toLowerCase()]!.toInt());
        }
      }
    });

    return res;
  }
}
