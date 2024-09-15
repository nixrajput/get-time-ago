import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final koreanMessages = KoreanMessages();

  group('KoreanMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(koreanMessages.prefixAgo(), '');
    });

    test('suffixAgo should return "전"', () {
      expect(koreanMessages.suffixAgo(), '전');
    });

    test('justNow should return "바로 지금"', () {
      expect(koreanMessages.justNow(10), '바로 지금');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(koreanMessages.secsAgo(30), '30초');
    });

    test('minAgo should return "일분"', () {
      expect(koreanMessages.minAgo(1), '일분');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(koreanMessages.minsAgo(5), '5분');
    });

    test('hourAgo should return "한시간"', () {
      expect(koreanMessages.hourAgo(60), '한시간');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(koreanMessages.hoursAgo(3), '3시간');
    });

    test('dayAgo should return "하루"', () {
      expect(koreanMessages.dayAgo(24), '하루');
    });

    test('daysAgo should return correct days ago format', () {
      expect(koreanMessages.daysAgo(2), '2일');
    });

    test('wordSeparator should return an empty string', () {
      expect(koreanMessages.wordSeparator(), '');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Korean Locale', () {
    test('should return "바로 지금" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'ko',
      );
      expect(result, '바로 지금');
    });

    test('should return "20초전" for 20 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 20)),
        locale: 'ko',
      );
      expect(result, '20초전');
    });

    test('should return "일분전" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'ko',
      );
      expect(result, '일분전');
    });

    test('should return "2분전" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'ko',
      );
      expect(result, '2분전');
    });

    test('should return "한시간전" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'ko',
      );
      expect(result, '한시간전');
    });

    test('should return "2시간전" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'ko',
      );
      expect(result, '2시간전');
    });

    test('should return "하루전" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'ko',
      );
      expect(result, '하루전');
    });

    test('should return "3일전" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'ko',
      );
      expect(result, '3일전');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'ko',
      );
      expect(result, isNot('10일전'));
    });
  });
}
