import '../messages.dart';

/// Traditional Chinese Messages
class TraditionalChineseMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String suffixAgo() => '前';

  @override
  String secsAgo(int seconds) => '$seconds秒';

  @override
  String minAgo(int minutes) => '1分鐘';

  @override
  String minsAgo(int minutes) => '$minutes分鐘';

  @override
  String hourAgo(int minutes) => '1小時';

  @override
  String hoursAgo(int hours) => '$hours小時';

  @override
  String dayAgo(int hours) => '1天';

  @override
  String daysAgo(int days) => '$days天';

  @override
  String wordSeparator() => '';
}
