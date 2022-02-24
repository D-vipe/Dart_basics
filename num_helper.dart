class NumHelper {
  List<num> searchStringNumbers(String data) {
    // split given string to get list
    List<String> dataArr = data.split(' ');
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
}
