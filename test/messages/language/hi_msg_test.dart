import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final messages = HindiMessages();

  group('HindiMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(messages.prefixAgo(), '');
    });

    test('suffixAgo should return "पहले"', () {
      expect(messages.suffixAgo(), 'पहले');
    });

    test('justNow should return "अभी"', () {
      expect(messages.justNow(10), 'अभी');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(messages.secsAgo(25), '25 क्षण');
    });

    test('minAgo should return "एक मिनट"', () {
      expect(messages.minAgo(1), 'एक मिनट');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(messages.minsAgo(5), '5 मिनट');
    });

    test('hourAgo should return "एक घंटा"', () {
      expect(messages.hourAgo(60), 'एक घंटा');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(messages.hoursAgo(5), '5 घंटे');
    });

    test('dayAgo should return "एक दिन"', () {
      expect(messages.dayAgo(24), 'एक दिन');
    });

    test('daysAgo should return correct days ago format', () {
      expect(messages.daysAgo(5), '5 दिन');
    });

    test('wordSeparator should return a space', () {
      expect(messages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Hindi Locale', () {
    test('should return "अभी" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 0)),
        locale: 'hi',
      );
      expect(result, 'अभी');
    });

    test('should return correct format for seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 20)),
        locale: 'hi',
      );
      expect(result, '20 क्षण पहले');
    });

    test('should return "एक मिनट पहले" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'hi',
      );
      expect(result, 'एक मिनट पहले');
    });

    test('should return correct format for 5 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 5)),
        locale: 'hi',
      );
      expect(result, '5 मिनट पहले');
    });

    test('should return "एक घंटा पहले" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'hi',
      );
      expect(result, 'एक घंटा पहले');
    });

    test('should return correct format for 5 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 5)),
        locale: 'hi',
      );
      expect(result, '5 घंटे पहले');
    });

    test('should return "एक दिन पहले" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 1)),
        locale: 'hi',
      );
      expect(result, 'एक दिन पहले');
    });

    test('should return correct format for 5 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 5)),
        locale: 'hi',
      );
      expect(result, '5 दिन पहले');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'hi',
      );
      expect(result, isNot('10 दिन पहले'));
    });
  });
}
