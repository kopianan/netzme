class DateUtil {
  static DateTime dateAddOrSubstract(DateTime date, {int? subsOrAddDay}) {
    final onlyDate = DateTime(date.year, date.month, date.day, 0);
    if (subsOrAddDay != null) {
      if (subsOrAddDay.isNegative) {
        return onlyDate.subtract(Duration(days: subsOrAddDay.abs()));
      } else {
        return onlyDate.add(Duration(days: subsOrAddDay));
      }
    }
    return onlyDate;
  }

  //if no parameter, will return today date
  static DateTime getDateWithoutTime({int? subsOrAddDay}) {
    final nowDate = DateTime.now();

    final onlyDate = DateTime(nowDate.year, nowDate.month, nowDate.day, 0);
    if (subsOrAddDay != null) {
      if (subsOrAddDay.isNegative) {
        return onlyDate.subtract(Duration(days: subsOrAddDay.abs()));
      } else {
        return onlyDate.add(Duration(days: subsOrAddDay));
      }
    }
    return onlyDate;
  }

  static int getValueByDate(DateTime date) {
    try {
      final nowDate = DateTime.now();
      final dateWoTime = DateTime(nowDate.year, nowDate.month, nowDate.day);

      if (dateWoTime.compareTo(date) == 0) {
        return 0;
      }

      if (date.compareTo(dateWoTime) > 0) {
        return 1;
      }
      if (date.compareTo(dateWoTime) < 0) {
        if (date.difference(dateWoTime).inDays > 0) {
          return -2;
        } else {
          return -1;
        }
      }
      return -2;
    } on Exception {
      return 0;
    }
  }

  
}
