import 'package:get_time_ago/src/messages/languages/ro_msg.dart';
import 'package:test/test.dart';

void main() {
  final messages = RomanianMessages();

  test('prefixAgo returns "acum"', () {
    expect(messages.prefixAgo(), 'acum');
  });

  test('suffixAgo returns empty string', () {
    expect(messages.suffixAgo(), '');
  });

  test('justNow returns correct strings', () {
    expect(messages.justNow(7), 'tocmai acum');
  });

  test('secsAgo returns correct strings', () {
    expect(messages.secsAgo(5), '5 secunde');
  });

  test('minAgo returns "un minut"', () {
    expect(messages.minAgo(1), 'un minut');
  });

  test('minsAgo returns correct strings', () {
    expect(messages.minsAgo(2), '2 minute');
  });

  test('hourAgo returns "o oră"', () {
    expect(messages.hourAgo(1), 'o oră');
  });

  test('hoursAgo returns correct strings', () {
    expect(messages.hoursAgo(3), '3 ore');
  });

  test('dayAgo returns "o zi"', () {
    expect(messages.dayAgo(1), 'o zi');
  });

  test('daysAgo returns correct strings', () {
    expect(messages.daysAgo(4), '4 zile');
  });

  test('wordSeparator returns space', () {
    expect(messages.wordSeparator(), ' ');
  });
}
