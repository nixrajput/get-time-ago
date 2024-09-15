import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final occitanMessages = OccitanMessages();

  group('OccitanMessages Test', () {
    test('prefixAgo should return "fa"', () {
      expect(occitanMessages.prefixAgo(), 'fa');
    });

    test('suffixAgo should return an empty string', () {
      expect(occitanMessages.suffixAgo(), '');
    });

    test('justNow should return "just ara"', () {
      expect(occitanMessages.justNow(10), 'just ara');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(occitanMessages.secsAgo(30), '30 segondas');
    });

    test('minAgo should return "una minuta"', () {
      expect(occitanMessages.minAgo(1), 'una minuta');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(occitanMessages.minsAgo(5), '5 minutas');
    });

    test('hourAgo should return "una ora"', () {
      expect(occitanMessages.hourAgo(60), 'una ora');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(occitanMessages.hoursAgo(3), '3 oras');
    });

    test('dayAgo should return "un jorn"', () {
      expect(occitanMessages.dayAgo(24), 'un jorn');
    });

    test('daysAgo should return correct days ago format', () {
      expect(occitanMessages.daysAgo(2), '2 jors');
    });

    test('wordSeparator should return a space', () {
      expect(occitanMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with Occitan Locale', () {
    test('should return "just ara" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 5)),
        locale: 'oc',
      );
      expect(result, 'just ara');
    });

    test('should return "20 segondas fa" for 20 seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 20)),
        locale: 'oc',
      );
      expect(result, 'fa 20 segondas');
    });

    test('should return "una minuta fa" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'oc',
      );
      expect(result, 'fa una minuta');
    });

    test('should return "2 minutas fa" for 2 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 2)),
        locale: 'oc',
      );
      expect(result, 'fa 2 minutas');
    });

    test('should return "una ora fa" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'oc',
      );
      expect(result, 'fa una ora');
    });

    test('should return "2 oras fa" for 2 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 2)),
        locale: 'oc',
      );
      expect(result, 'fa 2 oras');
    });

    test('should return "un jorn fa" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 24)),
        locale: 'oc',
      );
      expect(result, 'fa un jorn');
    });

    test('should return "3 jors fa" for 3 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 3)),
        locale: 'oc',
      );
      expect(result, 'fa 3 jors');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'oc',
      );
      expect(result, isNot('fa 3 jors'));
    });
  });
}
