import '../../utils/utility.dart';
import '../messages.dart';

/// Persian Messages
class PersianMessages extends Messages {
  @override
  String prefixAgo() => '\u202B';

  @override
  String suffixAgo() => 'پیش';

  @override
  String secsAgo(int seconds) => '${convertToUrduNumbers(seconds)} ثانیه';

  @override
  String minAgo(int minutes) => 'یک دقیقه';

  @override
  String minsAgo(int minutes) => '${convertToUrduNumbers(minutes)} دقیقه';

  @override
  String hourAgo(int minutes) => 'یک ساعت';

  @override
  String hoursAgo(int hours) => '${convertToUrduNumbers(hours)} ساعت';

  @override
  String dayAgo(int hours) => 'یک روز';

  @override
  String daysAgo(int days) => '${convertToUrduNumbers(days)} روز';

  @override
  String wordSeparator() => ' ';
}
