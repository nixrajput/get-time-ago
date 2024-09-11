import '../messages.dart';

/// Portuguese-Brazil Messages
class PortugueseBrazilMessages implements Messages {
  @override
  String prefixAgo() => 'Há';

  @override
  String suffixAgo() => '';

  @override
  String justNow(int seconds) => 'agora mesmo';

  @override
  String secsAgo(int seconds) => '$seconds segundos';

  @override
  String minAgo(int minutes) => 'um minuto';

  @override
  String minsAgo(int minutes) => '$minutes minutos';

  @override
  String hourAgo(int minutes) => 'uma hora';

  @override
  String hoursAgo(int hours) => '$hours horas';

  @override
  String dayAgo(int hours) => 'um dia';

  @override
  String daysAgo(int days) => '$days dias';

  @override
  String wordSeparator() => ' ';
}
