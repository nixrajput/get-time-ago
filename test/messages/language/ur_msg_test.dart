import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final urduMessages = UrduMessages();

  group('UrduMessages Test', () {
    test('prefixAgo should return RLE (Right to Left Embedding)', () {
      expect(urduMessages.prefixAgo(), '\u202B');
    });

    test('suffixAgo should return "پہلے"', () {
      expect(urduMessages.suffixAgo(), 'پہلے');
    });

    test('justNow should return "ابھی"', () {
      expect(urduMessages.justNow(10), 'ابھی');
    });

    test('secsAgo should return correct seconds format', () {
      expect(urduMessages.secsAgo(20), '۲۰ سیکنڈ');
    });

    test('minAgo should return "ایک منٹ"', () {
      expect(urduMessages.minAgo(1), 'ایک منٹ');
    });

    test('minsAgo should return correct minutes format', () {
      expect(urduMessages.minsAgo(5), '۵ منٹ');
    });

    test('hourAgo should return "ایک گھنٹہ"', () {
      expect(urduMessages.hourAgo(60), 'ایک گھنٹہ');
    });

    test('hoursAgo should return correct hours format', () {
      expect(urduMessages.hoursAgo(5), '۵ گھنٹے');
    });

    test('dayAgo should return "ایک دن"', () {
      expect(urduMessages.dayAgo(24), 'ایک دن');
    });

    test('daysAgo should return correct days format', () {
      expect(urduMessages.daysAgo(5), '۵ دن');
    });

    test('wordSeparator should return a space', () {
      expect(urduMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Urdu Locale', () {
    test('should return "ابھی" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'ur',
      );
      expect(result, 'ابھی');
    });

    test('should return "30 سیکنڈ پہلے" for 30 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 30)),
        locale: 'ur',
      );
      expect(result, '\u202B ۳۰ سیکنڈ پہلے');
    });

    test('should return "ایک منٹ پہلے" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'ur',
      );
      expect(result, '\u202B ایک منٹ پہلے');
    });

    test('should return "2 منٹ پہلے" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'ur',
      );
      expect(result, '\u202B ۲ منٹ پہلے');
    });

    test('should return "ایک گھنٹہ پہلے" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'ur',
      );
      expect(result, '\u202B ایک گھنٹہ پہلے');
    });

    test('should return "2 گھنٹے پہلے" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'ur',
      );
      expect(result, '\u202B ۲ گھنٹے پہلے');
    });

    test('should return "ایک دن پہلے" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'ur',
      );
      expect(result, '\u202B ایک دن پہلے');
    });

    test('should return "3 دن پہلے" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'ur',
      );
      expect(result, '\u202B ۳ دن پہلے');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'ur',
      );
      expect(result, isNot('\u202B ۱۰ دن پہلے'));
    });
  });
}
