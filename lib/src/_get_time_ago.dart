import 'package:get_time_ago/src/messages/languages/de_msg.dart';
import 'package:get_time_ago/src/messages/languages/en_msg.dart';
import 'package:get_time_ago/src/messages/languages/es_msg.dart';
import 'package:get_time_ago/src/messages/languages/fr_msg.dart';
import 'package:get_time_ago/src/messages/languages/hi_msg.dart';
import 'package:get_time_ago/src/messages/languages/id_msg.dart';
import 'package:get_time_ago/src/messages/languages/ja_msg.dart';
import 'package:get_time_ago/src/messages/languages/ko_msg.dart';
import 'package:get_time_ago/src/messages/languages/oc_msg.dart';
import 'package:get_time_ago/src/messages/languages/pt_br_msg.dart';
import 'package:get_time_ago/src/messages/languages/tr_msg.dart';
import 'package:get_time_ago/src/messages/languages/vi_msg.dart';
import 'package:get_time_ago/src/messages/languages/zh_cn_msg.dart';
import 'package:get_time_ago/src/messages/languages/zh_tw_msg.dart';
import 'package:get_time_ago/src/messages/messages.dart';
import 'package:intl/intl.dart';

import 'messages/languages/ar_msg.dart';

import 'messages/languages/ur_msg.dart';

class GetTimeAgo {
  static String _defaultLocale = 'en';

  static final Map<String, Messages> _messageMap = {
    'ar': ArabicMessages(),
    'en': EnglishMessages(),
    'es': EspanaMessages(),
    'fr': FrenchMessages(),
    'hi': HindiMessages(),
    'pt': PortugueseBrazilMessages(),
    'br': PortugueseBrazilMessages(),
    'zh': SimplifiedChineseMessages(),
    'zh_tr': TraditionalChineseMessages(),
    'ja': JapaneseMessages(),
    'oc': OccitanMessages(),
    'ko': KoreanMessages(),
    'de': GermanMessages(),
    'id': IndonesianMessages(),
    'tr': TurkishMessages(),
    'ur': UrduMessages(),
    'vi': VietnameseMessages(),
  };

  /// Sets the default [locale]. By default it is `en`.
  ///
  /// Example:
  /// ```dart
  /// setDefaultLocale('hi');
  /// ```

  static void setDefaultLocale(String locale) {
    assert(
      _messageMap.containsKey(locale),
      '[locale] must be a valid locale',
    );
    _defaultLocale = locale;
  }

  /// Sets a [customLocale] with the provided [customMessages]
  /// to be available when using the [parse] function.
  ///
  /// Example:
  /// ```dart
  /// setLocaleMessages('hi', HindiMessages());
  /// ```
  ///
  /// If you want to define locale message implement
  /// [Messages] interface with the desired messages
  ///

  static void setCustomLocaleMessages(
    String customLocale,
    Messages customMessages,
  ) {
    _messageMap[customLocale] = customMessages;
  }

  /// [parse] formats provided [dateTime] to a formatted time
  /// like 'a minute ago'.
  /// - If [locale] is passed will look for message for that locale.
  /// - If [pattern] is passed will be used as the DateFormat pattern.

  static String parse(
    DateTime dateTime, {
    String? locale,
    String? pattern,
  }) {
    final _locale = locale ?? _defaultLocale;
    final _message = _messageMap[_locale] ?? EnglishMessages();
    final _pattern = pattern ?? "dd MMM, yyyy hh:mm aa";
    final date = DateFormat(_pattern).format(dateTime);
    var _currentClock = DateTime.now();
    var elapsed =
        (_currentClock.millisecondsSinceEpoch - dateTime.millisecondsSinceEpoch)
            .abs();

    var _prefix = _message.prefixAgo();
    var _suffix = _message.suffixAgo();

    /// Getting [seconds], [minutes], [hours], [days] from
    /// provided [dateTime] by subtracting it from current [DateTime.now()].

    final num seconds = elapsed / 1000;
    final num minutes = seconds / 60;
    final num hours = minutes / 60;
    final num days = hours / 24;

    String msg;
    String result;

    /// If [elapsed] is less than 1 minute.
    if (seconds < 59) {
      msg = _message.secsAgo(seconds.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    }

    /// If [elapsed] is less than 2 minutes and
    /// greater than 1 minute.
    else if (seconds < 119) {
      msg = _message.minAgo(minutes.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    }

    /// If [elapsed] is less than 1 hour and
    /// greater than 2 minutes.
    else if (minutes < 59) {
      msg = _message.minsAgo(minutes.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    }

    /// If [elapsed] is less than 2 hours and
    /// greater than 1 hour.
    else if (minutes < 119) {
      msg = _message.hourAgo(hours.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    }

    /// If [elapsed] is less than 24 hours and
    /// greater than 2 hours.
    else if (hours < 24) {
      msg = _message.hoursAgo(hours.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    }

    /// If [elapsed] is less than 2 days and
    /// greater than 24 hours.
    else if (hours < 48) {
      msg = _message.dayAgo(hours.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    }

    /// If [elapsed] is less than 8 days and
    /// greater than 1 day.
    else if (days < 8) {
      msg = _message.daysAgo(days.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    }

    /// If [elapsed] is greater than 8 days,
    /// a formatted [Date] will be returned.
    else {
      msg = date;
      result = date;
    }

    return result;
  }
}
