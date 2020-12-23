/// [Messages] Template

abstract class Messages {
  String prefixAgo();

  String prefixFromNow();

  String suffixAgo();

  String suffixFromNow();

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

  String wordSeparator() => ' ';
}
