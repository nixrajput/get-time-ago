import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final portugueseBrazilMessages = PortugueseBrazilMessages();

  group('PortugueseBrazilMessages Test', () {
    test('prefixAgo should return "Há"', () {
      expect(portugueseBrazilMessages.prefixAgo(), 'Há');
    });

    test('suffixAgo should return an empty string', () {
      expect(portugueseBrazilMessages.suffixAgo(), '');
    });

    test('justNow should return "agora mesmo"', () {
      expect(portugueseBrazilMessages.justNow(10), 'agora mesmo');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(portugueseBrazilMessages.secsAgo(30), '30 segundos');
    });

    test('minAgo should return "um minuto"', () {
      expect(portugueseBrazilMessages.minAgo(1), 'um minuto');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(portugueseBrazilMessages.minsAgo(5), '5 minutos');
    });

    test('hourAgo should return "uma hora"', () {
      expect(portugueseBrazilMessages.hourAgo(60), 'uma hora');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(portugueseBrazilMessages.hoursAgo(3), '3 horas');
    });

    test('dayAgo should return "um dia"', () {
      expect(portugueseBrazilMessages.dayAgo(24), 'um dia');
    });

    test('daysAgo should return correct days ago format', () {
      expect(portugueseBrazilMessages.daysAgo(2), '2 dias');
    });

    test('wordSeparator should return a space', () {
      expect(portugueseBrazilMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Tests with Portuguese(Brazil) Locale', () {
    test('should return "agora mesmo" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'pt',
      );
      expect(result, 'agora mesmo');
    });

    test('should return "30 segundos Há" for 30 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 30)),
        locale: 'pt',
      );
      expect(result, 'Há 30 segundos');
    });

    test('should return "um minuto Há" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'pt',
      );
      expect(result, 'Há um minuto');
    });

    test('should return "2 minutos Há" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'pt',
      );
      expect(result, 'Há 2 minutos');
    });

    test('should return "uma hora Há" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'pt',
      );
      expect(result, 'Há uma hora');
    });

    test('should return "2 horas Há" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'pt',
      );
      expect(result, 'Há 2 horas');
    });

    test('should return "um dia Há" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'pt',
      );
      expect(result, 'Há um dia');
    });

    test('should return "3 dias Há" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'pt',
      );
      expect(result, 'Há 3 dias');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'pt',
      );
      expect(result, isNot('Há 10 dias'));
    });
  });
}
