import 'package:flutter_test/flutter_test.dart';
import 'package:get_time_ago/get_time_ago.dart';

final now = DateTime.now();

void main() {
  group('get_time_ago', () {
    test('should format with locale', () async {
      final dateTime = now.subtract(const Duration(minutes: 10));

      var result = GetTimeAgo.parse(dateTime, locale: 'pt');
      expect(result, equals('Há 10 minutos'));
    });

    test('should format with default locale, if locale messages doesnt exist',
        () async {
      final dateTime = now.subtract(const Duration(seconds: 30));

      var result = GetTimeAgo.parse(dateTime, locale: 'ko');
      expect(result, equals('30 seconds ago'));
    });

    test(
        'should format with default locale, if a [DateTime] is formatted as '
        'string will be given as input', () async {
      final stringDateTime = now.subtract(const Duration(days: 2)).toString();

      var result = GetTimeAgo.parse(DateTime.parse(stringDateTime));
      expect(result, equals('2 days ago'));
    });

    test('should allow to set a new default locale', () async {
      final dateTime = now.subtract(const Duration(hours: 10));

      // Set default locale to 'fr'
      GetTimeAgo.setDefaultLocale('fr');

      var result = GetTimeAgo.parse(dateTime);
      expect(result, equals('il y a 10 heures'));
    });

    test('should support a simplified chinese locale', () async {
      final dateTime = now.subtract(const Duration(hours: 10));

      // Set default locale to 'zh'
      GetTimeAgo.setDefaultLocale('zh');

      var result = GetTimeAgo.parse(dateTime);
      expect(result, equals('10小时前'));
    });
  });
}
