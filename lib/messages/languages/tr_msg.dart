import '../messages.dart';

/// English Messages
class TurkishMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => 'önce';

  @override
  String suffixFromNow() => 'içinde';

  @override
  String secsAgo(int seconds) => '$seconds saniye';

  @override
  String minAgo(int minutes) => '1 dakika önce';

  @override
  String minsAgo(int minutes) => '$minutes dakika';

  @override
  String hourAgo(int minutes) => 'bir saat';

  @override
  String hoursAgo(int hours) => '$hours saat';

  @override
  String dayAgo(int hours) => 'bir gün';

  @override
  String daysAgo(int days) => '$days gün';

  @override
  String wordSeparator() => ' ';
}
