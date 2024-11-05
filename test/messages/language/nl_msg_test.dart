import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final messages = DutchMessages();

  group('DutchMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(messages.prefixAgo(), '');
    });

    test('suffixAgo should return "geleden"', () {
      expect(messages.suffixAgo(), 'geleden');
    });

    test('justNow should return "zojuist"', () {
      expect(messages.justNow(10), 'zojuist');
    });

    test('secsAgo should return correct seconden ago format', () {
      expect(messages.secsAgo(25), '25 seconden');
    });

    test('minAgo should return "een minuut"', () {
      expect(messages.minAgo(1), 'een minuut');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(messages.minsAgo(5), '5 minuten');
    });

    test('hourAgo should return "een uur"', () {
      expect(messages.hourAgo(60), 'een uur');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(messages.hoursAgo(5), '5 uur');
    });

    test('dayAgo should return "een dag"', () {
      expect(messages.dayAgo(24), 'een dag');
    });

    test('daysAgo should return correct days ago format', () {
      expect(messages.daysAgo(5), '5 dagen');
    });

    test('wordSeparator should return a space', () {
      expect(messages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Dutch Locale', () {
    test('should return "just now" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 0)),
        locale: 'nl',
      );
      expect(result, 'zojuist');
    });

    test('should return correct format for seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 20)),
        locale: 'nl',
      );
      expect(result, '20 seconden geleden');
    });

    test('should return "a minute ago" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'nl',
      );
      expect(result, 'een minuut geleden');
    });

    test('should return correct format for 5 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 5)),
        locale: 'nl',
      );
      expect(result, '5 minuten geleden');
    });

    test('should return "an hour ago" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'nl',
      );
      expect(result, 'een uur geleden');
    });

    test('should return correct format for 5 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 5)),
        locale: 'nl',
      );
      expect(result, '5 uur geleden');
    });

    test('should return "a day ago" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 1)),
        locale: 'nl',
      );
      expect(result, 'een dag geleden');
    });

    test('should return correct format for 5 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 5)),
        locale: 'nl',
      );
      expect(result, '5 dagen geleden');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'nl',
      );
      expect(result, isNot('10 dagen geleden'));
    });
  });
}
