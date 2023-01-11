/// [Messages] Template

abstract class Messages {
  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String prefixAgo();

  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String suffixAgo();

  /// When time is less than a minute
  String secsAgo(int seconds);

  /// When time is about a minute
  String minAgo(int minutes);

  /// When time is in minutes
  String minsAgo(int minutes);

  /// When time is about an hour
  String hourAgo(int minutes);

  /// When time is in hours
  String hoursAgo(int hours);

  /// When time is a day
  String dayAgo(int hours);

  /// When time is in days
  String daysAgo(int days);

  /// Word separator when words are concatenated
  String wordSeparator() => ' ';
}
