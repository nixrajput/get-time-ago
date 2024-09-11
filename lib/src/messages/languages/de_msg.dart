import '../messages.dart';

/// The [GermanMessages] class provides German language-specific
/// implementations of the [Messages] interface. This class is used to format
/// the "time ago" strings in German.
class GermanMessages implements Messages {
  @override
  String prefixAgo() => 'vor';

  @override
  String suffixAgo() => '';

  @override
  String justNow(int seconds) => 'vorhin';

  @override
  String secsAgo(int seconds) => '$seconds Sekunden';

  @override
  String minAgo(int minutes) => 'einer Minute';

  @override
  String minsAgo(int minutes) => '$minutes Minuten';

  @override
  String hourAgo(int minutes) => 'einer Stunde';

  @override
  String hoursAgo(int hours) => '$hours Stunden';

  @override
  String dayAgo(int hours) => 'einem Tag';

  @override
  String daysAgo(int days) => '$days Tagen';

  @override
  String wordSeparator() => ' ';
}
