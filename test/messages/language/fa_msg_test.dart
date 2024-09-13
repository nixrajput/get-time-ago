import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  group('PersianMessages Test', () {
    final persianMessages = PersianMessages();

    test('prefixAgo should return correct prefix', () {
      expect(persianMessages.prefixAgo(), '\u202B');
    });

    test('suffixAgo should return correct suffix', () {
      expect(persianMessages.suffixAgo(), 'پیش');
    });

    test('justNow should return correct message', () {
      expect(persianMessages.justNow(10), 'همین الان');
    });

    test('secsAgo should return correct message', () {
      expect(persianMessages.secsAgo(30), '۳۰ ثانیه');
    });

    test('minAgo should return correct message', () {
      expect(persianMessages.minAgo(1), 'یک دقیقه');
    });

    test('minsAgo should return correct message', () {
      expect(persianMessages.minsAgo(5), '۵ دقیقه');
    });

    test('hourAgo should return correct message', () {
      expect(persianMessages.hourAgo(60), 'یک ساعت');
    });

    test('hoursAgo should return correct message', () {
      expect(persianMessages.hoursAgo(3), '۳ ساعت');
    });

    test('dayAgo should return correct message', () {
      expect(persianMessages.dayAgo(24), 'یک روز');
    });

    test('daysAgo should return correct message', () {
      expect(persianMessages.daysAgo(4), '۴ روز');
    });

    test('wordSeparator should return correct separator', () {
      expect(persianMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Persian Locale', () {
    test('should return همین الان for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 0)),
        locale: 'fa',
      );
      expect(result, 'همین الان');
    });

    test('should return ۳۰ ثانیه پیش for 30 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 30)),
        locale: 'fa',
      );
      expect(result, '\u202B ۳۰ ثانیه پیش');
    });

    test('should return یک دقیقه پیش for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        DateTime.now().subtract(const Duration(minutes: 1)),
        locale: 'fa',
      );
      expect(result, '\u202B یک دقیقه پیش');
    });

    test('should return ۱۰ دقیقه پیش for 10 minutes ago', () {
      final result = GetTimeAgo.parse(
        DateTime.now().subtract(const Duration(minutes: 10)),
        locale: 'fa',
      );
      expect(result, '\u202B ۱۰ دقیقه پیش');
    });

    test('should return یک ساعت پیش for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        DateTime.now().subtract(const Duration(hours: 1)),
        locale: 'fa',
      );
      expect(result, '\u202B یک ساعت پیش');
    });

    test('should return ۵ ساعت پیش for 5 hours ago', () {
      final result = GetTimeAgo.parse(
        DateTime.now().subtract(const Duration(hours: 5)),
        locale: 'fa',
      );
      expect(result, '\u202B ۵ ساعت پیش');
    });

    test('should return یک روز پیش for 1 day ago', () {
      final result = GetTimeAgo.parse(
        DateTime.now().subtract(const Duration(days: 1)),
        locale: 'fa',
      );
      expect(result, '\u202B یک روز پیش');
    });

    test('should return ۳ روز پیش for 3 days ago', () {
      final result = GetTimeAgo.parse(
        DateTime.now().subtract(const Duration(days: 3)),
        locale: 'fa',
      );
      expect(result, '\u202B ۳ روز پیش');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        DateTime.now().subtract(const Duration(days: 10)),
        locale: 'fa',
      );
      expect(result, isNot('\u202B ۳ روز پیش'));
    });
  });
}
