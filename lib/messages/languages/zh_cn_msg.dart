import '../messages.dart';

/// English Messages
class SimplifiedChineseMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => '前';

  @override
  String suffixFromNow() => '现在起';

  @override
  String secsAgo(int seconds) => '$seconds秒';

  @override
  String minAgo(int minutes) => '1分钟';

  @override
  String minsAgo(int minutes) => '$minutes分钟';

  @override
  String hourAgo(int minutes) => '1小时';

  @override
  String hoursAgo(int hours) => '$hours小时';

  @override
  String dayAgo(int hours) => '1天';

  @override
  String daysAgo(int days) => '$days天';

  @override
  String wordSeparator() => '';
}
