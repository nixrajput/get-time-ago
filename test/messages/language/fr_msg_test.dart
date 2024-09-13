import 'package:get_time_ago/get_time_ago.dart';
import 'package:test/test.dart';

void main() {
  final frenchMessages = FrenchMessages();

  group('FrenchMessages Test', () {
    test('prefixAgo should return "il y a"', () {
      expect(frenchMessages.prefixAgo(), 'il y a');
    });

    test('suffixAgo should return an empty string', () {
      expect(frenchMessages.suffixAgo(), '');
    });

    test('justNow should return "en ce moment"', () {
      expect(frenchMessages.justNow(20), 'en ce moment');
    });

    test('secsAgo should return correct seconds ago format', () {
      expect(frenchMessages.secsAgo(25), '25 secondes');
    });

    test('minAgo should return "une minute"', () {
      expect(frenchMessages.minAgo(1), 'une minute');
    });

    test('minsAgo should return correct minutes ago format', () {
      expect(frenchMessages.minsAgo(5), '5 minutes');
    });

    test('hourAgo should return "une heure"', () {
      expect(frenchMessages.hourAgo(60), 'une heure');
    });

    test('hoursAgo should return correct hours ago format', () {
      expect(frenchMessages.hoursAgo(5), '5 heures');
    });

    test('dayAgo should return "un jour"', () {
      expect(frenchMessages.dayAgo(24), 'un jour');
    });

    test('daysAgo should return correct days ago format', () {
      expect(frenchMessages.daysAgo(5), '5 jours');
    });

    test('wordSeparator should return a space', () {
      expect(frenchMessages.wordSeparator(), ' ');
    });
  });

  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  group('GetTimeAgo Test with French Locale', () {
    test('should return "en ce moment" for time less than 15 seconds', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 0)),
        locale: 'fr',
      );
      expect(result, 'en ce moment');
    });

    test('should return correct format for seconds ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(seconds: 20)),
        locale: 'fr',
      );
      expect(result, 'il y a 20 secondes');
    });

    test('should return "une minute" for 1 minute ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 1)),
        locale: 'fr',
      );
      expect(result, 'il y a une minute');
    });

    test('should return correct format for 5 minutes ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(minutes: 5)),
        locale: 'fr',
      );
      expect(result, 'il y a 5 minutes');
    });

    test('should return "une heure" for 1 hour ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 1)),
        locale: 'fr',
      );
      expect(result, 'il y a une heure');
    });

    test('should return correct format for 5 hours ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(hours: 5)),
        locale: 'fr',
      );
      expect(result, 'il y a 5 heures');
    });

    test('should return "un jour" for 1 day ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 1)),
        locale: 'fr',
      );
      expect(result, 'il y a un jour');
    });

    test('should return correct format for 5 days ago', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 5)),
        locale: 'fr',
      );
      expect(result, 'il y a 5 jours');
    });

    test('should return formatted date for dates beyond 7 days', () {
      final result = GetTimeAgo.parse(
        _getRelativeDateTime(const Duration(days: 10)),
        locale: 'fr',
      );
      expect(result, isNot('il y a 10 jours'));
    });
  });
}
