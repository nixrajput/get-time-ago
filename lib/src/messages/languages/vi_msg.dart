import '../messages.dart';

/// English Messages
class VietnameseMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String suffixAgo() => 'trước';

  @override
  String secsAgo(int seconds) => '$seconds giây';

  @override
  String minAgo(int minutes) => '1 phút';

  @override
  String minsAgo(int minutes) => '$minutes phút';

  @override
  String hourAgo(int minutes) => '1 giờ';

  @override
  String hoursAgo(int hours) => '$hours giờ';

  @override
  String dayAgo(int hours) => '1 ngày';

  @override
  String daysAgo(int days) => '$days ngày';

  @override
  String wordSeparator() => ' ';
}
