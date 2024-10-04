import 'package:intl/intl.dart';

abstract class DateFormatter {
  static String format(DateTime date) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(date);
  }
}
