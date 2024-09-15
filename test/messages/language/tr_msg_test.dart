import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final turkishMessages = TurkishMessages();

  group('TurkishMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(turkishMessages.prefixAgo(), '');
    });

    test('suffixAgo should return "önce"', () {
      expect(turkishMessages.suffixAgo(), 'önce');
    });

    test('justNow should return "hemen şimdi"', () {
      expect(turkishMessages.justNow(10), 'hemen şimdi');
    });

    test('secsAgo should return correct seconds format', () {
      expect(turkishMessages.secsAgo(20), '20 saniye');
    });

    test('minAgo should return "1 dakika önce"', () {
      expect(turkishMessages.minAgo(1), '1 dakika');
    });

    test('minsAgo should return correct minutes format', () {
      expect(turkishMessages.minsAgo(5), '5 dakika');
    });

    test('hourAgo should return "bir saat"', () {
      expect(turkishMessages.hourAgo(60), 'bir saat');
    });

    test('hoursAgo should return correct hours format', () {
      expect(turkishMessages.hoursAgo(5), '5 saat');
    });

    test('dayAgo should return "bir gün"', () {
      expect(turkishMessages.dayAgo(24), 'bir gün');
    });

    test('daysAgo should return correct days format', () {
      expect(turkishMessages.daysAgo(5), '5 gün');
    });

    test('wordSeparator should return a space', () {
      expect(turkishMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Turkish Locale', () {
    test('should return "hemen şimdi" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'tr',
      );
      expect(result, 'hemen şimdi');
    });

    test('should return "30 saniye önce" for 30 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 30)),
        locale: 'tr',
      );
      expect(result, '30 saniye önce');
    });

    test('should return "1 dakika önce" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'tr',
      );
      expect(result, '1 dakika önce');
    });

    test('should return "2 dakika önce" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'tr',
      );
      expect(result, '2 dakika önce');
    });

    test('should return "bir saat önce" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'tr',
      );
      expect(result, 'bir saat önce');
    });

    test('should return "2 saat önce" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'tr',
      );
      expect(result, '2 saat önce');
    });

    test('should return "bir gün önce" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'tr',
      );
      expect(result, 'bir gün önce');
    });

    test('should return "3 gün önce" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'tr',
      );
      expect(result, '3 gün önce');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'tr',
      );
      expect(result, isNot('10 gün önce'));
    });
  });
}
