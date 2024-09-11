import '../messages.dart';

/// Occitan Messages
class OccitanMessages implements Messages {
  @override
  String prefixAgo() => 'fa';

  @override
  String suffixAgo() => '';

  @override
  String justNow(int seconds) => 'just ara';

  @override
  String secsAgo(int seconds) => '$seconds segondas';

  @override
  String minAgo(int minutes) => 'una minuta';

  @override
  String minsAgo(int minutes) => '$minutes minutas';

  @override
  String hourAgo(int minutes) => 'una ora';

  @override
  String hoursAgo(int hours) => '$hours oras';

  @override
  String dayAgo(int hours) => 'un jorn';

  @override
  String daysAgo(int days) => '$days jors';

  @override
  String wordSeparator() => ' ';
}
