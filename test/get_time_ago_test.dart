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

    test('should format with pattern', () async {
      final dateTime = "2021-02-11 11:45:37.712498";

      var result =
          GetTimeAgo.parse(DateTime.parse(dateTime), pattern: 'yy/M/dd HH:mm');
      expect(result, equals('21/2/11 11:45'));
    });

    test('should format with default locale, if locale messages doesnt exist',
        () async {
      final dateTime = now.subtract(const Duration(seconds: 30));

      var result = GetTimeAgo.parse(dateTime);
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

    test('should support a japanese locale', () async {
      final dateTime = now.subtract(const Duration(minutes: 1));

      var result = GetTimeAgo.parse(dateTime, locale: 'ja');
      expect(result, equals('1分前'));
    });

    test('should support an Occitan locale', () async {
      final dateTime = now.subtract(const Duration(hours: 10));
      // Set default locale to 'oc'
      GetTimeAgo.setDefaultLocale('oc');

      var result = GetTimeAgo.parse(dateTime);
      expect(result, equals('fa 10 oras'));
    });

  });
}
