import 'package:intl/intl.dart';

class TimeAgo {
  String getTimeAgo(DateTime dateTime) {
    var elapsed =
        DateTime.now().millisecondsSinceEpoch - dateTime.millisecondsSinceEpoch;

    final num seconds = elapsed / 1000;
    final num minutes = seconds / 60;
    final num hours = minutes / 60;
    final num days = hours / 24;
    final date = DateFormat.yMMMd().format(dateTime);

    String message;
    if (seconds < 60) {
      message = "${seconds.round()} sec ago";
    } else if (seconds < 90) {
      message = "${minutes.round()} min ago";
    } else if (minutes < 60) {
      message = "${minutes.round()} min ago";
    } else if (minutes < 90) {
      message = "${hours.round()} hour ago";
    } else if (hours < 24) {
      message = "${hours.round()} hours ago";
    } else if (hours < 168) {
      message = "${days.round()} days ago";
    } else {
      message = "$date";
    }

    return message;
  }
}
