import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final vietnameseMessages = VietnameseMessages();

  group('VietnameseMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(vietnameseMessages.prefixAgo(), '');
    });

    test('suffixAgo should return "trước"', () {
      expect(vietnameseMessages.suffixAgo(), 'trước');
    });

    test('justNow should return "ngay bây giờ"', () {
      expect(vietnameseMessages.justNow(10), 'ngay bây giờ');
    });

    test('secsAgo should return correct seconds format', () {
      expect(vietnameseMessages.secsAgo(20), '20 giây');
    });

    test('minAgo should return "1 phút"', () {
      expect(vietnameseMessages.minAgo(1), '1 phút');
    });

    test('minsAgo should return correct minutes format', () {
      expect(vietnameseMessages.minsAgo(5), '5 phút');
    });

    test('hourAgo should return "1 giờ"', () {
      expect(vietnameseMessages.hourAgo(60), '1 giờ');
    });

    test('hoursAgo should return correct hours format', () {
      expect(vietnameseMessages.hoursAgo(5), '5 giờ');
    });

    test('dayAgo should return "1 ngày"', () {
      expect(vietnameseMessages.dayAgo(24), '1 ngày');
    });

    test('daysAgo should return correct days format', () {
      expect(vietnameseMessages.daysAgo(5), '5 ngày');
    });

    test('wordSeparator should return a space', () {
      expect(vietnameseMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Vietnamese Locale', () {
    test('should return "ngay bây giờ" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'vi',
      );
      expect(result, 'ngay bây giờ');
    });

    test('should return "30 giây trước" for 30 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 30)),
        locale: 'vi',
      );
      expect(result, '30 giây trước');
    });

    test('should return "1 phút trước" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'vi',
      );
      expect(result, '1 phút trước');
    });

    test('should return "2 phút trước" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'vi',
      );
      expect(result, '2 phút trước');
    });

    test('should return "1 giờ trước" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'vi',
      );
      expect(result, '1 giờ trước');
    });

    test('should return "2 giờ trước" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'vi',
      );
      expect(result, '2 giờ trước');
    });

    test('should return "1 ngày trước" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'vi',
      );
      expect(result, '1 ngày trước');
    });

    test('should return "3 ngày trước" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'vi',
      );
      expect(result, '3 ngày trước');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'vi',
      );
      expect(result, isNot('10 ngày trước'));
    });
  });
}
