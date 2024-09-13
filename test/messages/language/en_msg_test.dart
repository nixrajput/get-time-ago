import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final messages = EnglishMessages();

  group('EnglishMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(messages.prefixAgo(), '');
    });

    test('suffixAgo should return "ago"', () {
      expect(messages.suffixAgo(), 'ago');
    });

    test('justNow should return "just now"', () {
      expect(messages.justNow(10), 'just now');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(messages.secsAgo(25), '25 seconds');
    });

    test('minAgo should return "a minute"', () {
      expect(messages.minAgo(1), 'a minute');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(messages.minsAgo(5), '5 minutes');
    });

    test('hourAgo should return "an hour"', () {
      expect(messages.hourAgo(60), 'an hour');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(messages.hoursAgo(5), '5 hours');
    });

    test('dayAgo should return "a day"', () {
      expect(messages.dayAgo(24), 'a day');
    });

    test('daysAgo should return correct days ago format', () {
      expect(messages.daysAgo(5), '5 days');
    });

    test('wordSeparator should return a space', () {
      expect(messages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with German Locale', () {
    test('should return "just now" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 0)),
        locale: 'en',
      );
      expect(result, 'just now');
    });

    test('should return correct format for seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 20)),
        locale: 'en',
      );
      expect(result, '20 seconds ago');
    });

    test('should return "a minute ago" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'en',
      );
      expect(result, 'a minute ago');
    });

    test('should return correct format for 5 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 5)),
        locale: 'en',
      );
      expect(result, '5 minutes ago');
    });

    test('should return "an hour ago" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'en',
      );
      expect(result, 'an hour ago');
    });

    test('should return correct format for 5 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 5)),
        locale: 'en',
      );
      expect(result, '5 hours ago');
    });

    test('should return "a day ago" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 1)),
        locale: 'en',
      );
      expect(result, 'a day ago');
    });

    test('should return correct format for 5 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 5)),
        locale: 'en',
      );
      expect(result, '5 days ago');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'en',
      );
      expect(result, isNot('10 days ago'));
    });
  });
}
