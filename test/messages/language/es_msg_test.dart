import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final messages = EspanaMessages();

  group('EspanaMessages Test', () {
    test('prefixAgo should return "hace"', () {
      expect(messages.prefixAgo(), 'hace');
    });

    test('suffixAgo should return an empty string', () {
      expect(messages.suffixAgo(), '');
    });

    test('justNow should return "hace poco"', () {
      expect(messages.justNow(10), 'hace poco');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(messages.secsAgo(25), '25 segundos');
    });

    test('minAgo should return "un minuto"', () {
      expect(messages.minAgo(1), 'un minuto');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(messages.minsAgo(5), '5 minutos');
    });

    test('hourAgo should return "una hora"', () {
      expect(messages.hourAgo(60), 'una hora');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(messages.hoursAgo(5), '5 horas');
    });

    test('dayAgo should return "un día"', () {
      expect(messages.dayAgo(24), 'un día');
    });

    test('daysAgo should return correct days ago format', () {
      expect(messages.daysAgo(5), '5 días');
    });

    test('wordSeparator should return a space', () {
      expect(messages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Spanish Locale', () {
    test('should return "hace poco" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 00)),
        locale: 'es',
      );
      expect(result, 'hace poco');
    });

    test('should return correct format for seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 20)),
        locale: 'es',
      );
      expect(result, 'hace 20 segundos');
    });

    test('should return "un minuto" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'es',
      );
      expect(result, 'hace un minuto');
    });

    test('should return correct format for 5 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 5)),
        locale: 'es',
      );
      expect(result, 'hace 5 minutos');
    });

    test('should return "una hora" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'es',
      );
      expect(result, 'hace una hora');
    });

    test('should return correct format for 5 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 5)),
        locale: 'es',
      );
      expect(result, 'hace 5 horas');
    });

    test('should return "un día" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 1)),
        locale: 'es',
      );
      expect(result, 'hace un día');
    });

    test('should return correct format for 5 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 5)),
        locale: 'es',
      );
      expect(result, 'hace 5 días');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'es',
      );
      expect(result, isNot('hace 10 días'));
    });
  });
}
