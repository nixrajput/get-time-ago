import 'package:intl/intl.dart';

import './messages/languages/en_msg.dart';
import './messages/languages/es_msg.dart';
import './messages/languages/fr_msg.dart';
import './messages/languages/hi_msg.dart';
import './messages/languages/pt_br_msg.dart';
import './messages/languages/zh_cn_msg.dart';
import './messages/messages.dart';

class GetTimeAgo {
  static String _default = 'en';

  static final Map<String, Messages> _messageMap = {
    'en': EnglishMessages(),
    'es': EspanaMessages(),
    'fr': FrenchMessages(),
    'hi': HindiMessages(),
    'pt': PortugueseBrazilMessages(),
    'br': PortugueseBrazilMessages(),
    'zh': SimplifiedChineseMessages(),
  };

  ///
  /// Sets the default [locale]. By default it is `en`.
  ///
  /// Example:
  /// ```dart
  /// setDefaultLocale('fr');
  /// ```
  ///

  static void setDefaultLocale(String locale) {
    assert(_messageMap.containsKey(locale), '[locale] must be a valid locale');
    _default = locale;
  }

  ///
  /// [parse] formats provided [dateTime] to a formatted time
  /// like 'a minute ago'.
  /// - If [locale] is passed will look for message for that locale.
  /// - If [pattern] is passed will be used as the DateFormat pattern.
  ///

  static String parse(DateTime dateTime, {String? locale, String? pattern}) {
    final _locale = locale ?? _default;
    final _message = _messageMap[_locale] ?? EnglishMessages();
    final _pattern = pattern ?? "dd MMM, yyyy hh:mm aa";
    final date = DateFormat(_pattern).format(dateTime);
    var elapsed =
        DateTime.now().millisecondsSinceEpoch - dateTime.millisecondsSinceEpoch;

    var _prefix = _message.prefixAgo();
    var _suffix = _message.suffixAgo();

    ///
    /// Getting [seconds], [minutes], [hours], [days] from provided [dateTime]
    /// by subtracting it from current [DateTime.now()].
    ///

    final num seconds = elapsed / 1000;
    final num minutes = seconds / 60;
    final num hours = minutes / 60;
    final num days = hours / 24;

    String msg;
    String result;
    if (seconds < 59) {
      msg = _message.secsAgo(seconds.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    } else if (seconds < 119) {
      msg = _message.minAgo(minutes.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    } else if (minutes < 59) {
      msg = _message.minsAgo(minutes.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    } else if (minutes < 119) {
      msg = _message.hourAgo(hours.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    } else if (hours < 24) {
      msg = _message.hoursAgo(hours.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    } else if (hours < 48) {
      msg = _message.dayAgo(hours.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    } else if (days < 8) {
      msg = _message.daysAgo(days.round());
      result = [_prefix, msg, _suffix]
          .where((res) => res.isNotEmpty)
          .join(_message.wordSeparator());
    } else {
      msg = date;
      result = date;
    }

    return result;
  }
}
