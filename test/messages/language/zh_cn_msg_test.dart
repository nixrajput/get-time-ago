import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final simplifiedChineseMessages = SimplifiedChineseMessages();

  group('SimplifiedChineseMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(simplifiedChineseMessages.prefixAgo(), '');
    });

    test('suffixAgo should return "前"', () {
      expect(simplifiedChineseMessages.suffixAgo(), '前');
    });

    test('justNow should return "刚才"', () {
      expect(simplifiedChineseMessages.justNow(10), '刚才');
    });

    test('secsAgo should return correct seconds format', () {
      expect(simplifiedChineseMessages.secsAgo(20), '20秒');
    });

    test('minAgo should return "1分钟"', () {
      expect(simplifiedChineseMessages.minAgo(1), '1分钟');
    });

    test('minsAgo should return correct minutes format', () {
      expect(simplifiedChineseMessages.minsAgo(5), '5分钟');
    });

    test('hourAgo should return "1小时"', () {
      expect(simplifiedChineseMessages.hourAgo(60), '1小时');
    });

    test('hoursAgo should return correct hours format', () {
      expect(simplifiedChineseMessages.hoursAgo(5), '5小时');
    });

    test('dayAgo should return "1天"', () {
      expect(simplifiedChineseMessages.dayAgo(24), '1天');
    });

    test('daysAgo should return correct days format', () {
      expect(simplifiedChineseMessages.daysAgo(5), '5天');
    });

    test('wordSeparator should return an empty string', () {
      expect(simplifiedChineseMessages.wordSeparator(), '');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Chinese(Simplified) Locale', () {
    test('should return "刚才" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'zh',
      );
      expect(result, '刚才');
    });

    test('should return "30秒前" for 30 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 30)),
        locale: 'zh',
      );
      expect(result, '30秒前');
    });

    test('should return "1分钟前" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'zh',
      );
      expect(result, '1分钟前');
    });

    test('should return "2分钟前" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'zh',
      );
      expect(result, '2分钟前');
    });

    test('should return "1小时前" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'zh',
      );
      expect(result, '1小时前');
    });

    test('should return "2小时前" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'zh',
      );
      expect(result, '2小时前');
    });

    test('should return "1天前" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'zh',
      );
      expect(result, '1天前');
    });

    test('should return "3天前" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'zh',
      );
      expect(result, '3天前');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'zh',
      );
      expect(result, isNot('10天前'));
    });
  });
}
