import '../messages.dart';

/// Japanese Messages
class JapaneseMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String suffixAgo() => '前';

  @override
  String justNow(int seconds) => '唯今';

  @override
  String secsAgo(int seconds) => '$seconds秒';

  @override
  String minAgo(int minutes) => '1分';

  @override
  String minsAgo(int minutes) => '$minutes分';

  @override
  String hourAgo(int minutes) => '1時間';

  @override
  String hoursAgo(int hours) => '$hours時間';

  @override
  String dayAgo(int hours) => '1日';

  @override
  String daysAgo(int days) => '$days日';

  @override
  String wordSeparator() => '';
}
