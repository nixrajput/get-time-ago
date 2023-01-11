import '../../utils/utility.dart';
import '../messages.dart';

/// Urdu Messages
class UrduMessages extends Messages {
  @override
  String prefixAgo() => '\u202B'; // right to left embedding character

  @override
  String suffixAgo() => 'پہلے';

  @override
  String secsAgo(int seconds) => '${convertToUrduNumbers(seconds)} سیکنڈ';

  @override
  String minAgo(int minutes) => 'ایک منٹ';

  @override
  String minsAgo(int minutes) => '${convertToUrduNumbers(minutes)} منٹ';

  @override
  String hourAgo(int minutes) => 'ایک گھنٹہ';

  @override
  String hoursAgo(int hours) => '${convertToUrduNumbers(hours)} گھنٹے';

  @override
  String dayAgo(int hours) => 'ایک دن';

  @override
  String daysAgo(int days) => '${convertToUrduNumbers(days)} دن';

  @override
  String wordSeparator() => ' ';
}
