import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final indonesianMessages = IndonesianMessages();

  group('FrenchMessages Test', () {
    test('prefixAgo should return an empty string', () {
      expect(indonesianMessages.prefixAgo(), '');
    });

    test('suffixAgo should return "lalu"', () {
      expect(indonesianMessages.suffixAgo(), 'lalu');
    });

    test('justNow should return "baru saja"', () {
      expect(indonesianMessages.justNow(20), 'baru saja');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(indonesianMessages.secsAgo(25), '25 detik');
    });

    test('minAgo should return "semenit"', () {
      expect(indonesianMessages.minAgo(1), 'semenit');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(indonesianMessages.minsAgo(5), '5 menit');
    });

    test('hourAgo should return "sejam"', () {
      expect(indonesianMessages.hourAgo(60), 'sejam');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(indonesianMessages.hoursAgo(5), '5 jam');
    });

    test('dayAgo should return "sehari"', () {
      expect(indonesianMessages.dayAgo(24), 'sehari');
    });

    test('daysAgo should return correct days ago format', () {
      expect(indonesianMessages.daysAgo(5), '5 hari');
    });

    test('wordSeparator should return a space', () {
      expect(indonesianMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Indonesian Locale', () {
    test('should return "baru saja" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'id',
      );
      expect(result, 'baru saja');
    });

    test('should return "25 detik lalu" for 25 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 25)),
        locale: 'id',
      );
      expect(result, '25 detik lalu');
    });

    test('should return "semenit lalu" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'id',
      );
      expect(result, 'semenit lalu');
    });

    test('should return "2 menit lalu" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'id',
      );
      expect(result, '2 menit lalu');
    });

    test('should return "sejam lalu" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'id',
      );
      expect(result, 'sejam lalu');
    });

    test('should return "2 jam lalu" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'id',
      );
      expect(result, '2 jam lalu');
    });

    test('should return "sehari lalu" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'id',
      );
      expect(result, 'sehari lalu');
    });

    test('should return "3 hari lalu" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'id',
      );
      expect(result, '3 hari lalu');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'id',
      );
      expect(result, isNot('10 hari lalu'));
    });
  });
}
