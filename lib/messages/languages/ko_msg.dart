import '../messages.dart';

/// English Messages
class KoreanMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => '초';

  @override
  String suffixFromNow() => '방금';

  @override
  String secsAgo(int seconds) => '$seconds초';

  @override
  String minAgo(int minutes) => '일분';

  @override
  String minsAgo(int minutes) => '$minutes분';

  @override
  String hourAgo(int minutes) => '한시간';

  @override
  String hoursAgo(int hours) => '$hours시간';

  @override
  String dayAgo(int hours) => '하루';

  @override
  String daysAgo(int days) => '$days일';

  @override
  String wordSeparator() => '';
}
