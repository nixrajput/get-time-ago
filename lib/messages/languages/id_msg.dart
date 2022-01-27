import '../messages.dart';

/// English Messages
class IndonesianMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => 'lalu';

  @override
  String suffixFromNow() => 'sekarang';

  @override
  String secsAgo(int seconds) => '$seconds detik';

  @override
  String minAgo(int minutes) => 'semenit';

  @override
  String minsAgo(int minutes) => '$minutes menit';

  @override
  String hourAgo(int minutes) => 'sejam';

  @override
  String hoursAgo(int hours) => '$hours jam';

  @override
  String dayAgo(int hours) => 'sehari';

  @override
  String daysAgo(int days) => '$days hari';

  @override
  String wordSeparator() => ' ';
}
