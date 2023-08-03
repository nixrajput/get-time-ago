import '../messages.dart';

/// Romanian messages
class RomanianMessages implements Messages {
  @override
  String prefixAgo() => 'acum';

  @override
  String suffixAgo() => '';

  @override
  String secsAgo(int seconds) {
    if (seconds == 1) {
      return 'o secundă';
    }
    return '$seconds secunde';
  }

  @override
  String minAgo(int minutes) => 'un minut';

  @override
  String minsAgo(int minutes) => '$minutes minute';

  @override
  String hourAgo(int minutes) => 'o oră';

  @override
  String hoursAgo(int hours) => '$hours ore';

  @override
  String dayAgo(int hours) => 'o zi';

  @override
  String daysAgo(int days) => '$days zile';

  @override
  String wordSeparator() => ' ';
}
