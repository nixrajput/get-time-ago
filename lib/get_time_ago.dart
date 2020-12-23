import 'package:intl/intl.dart';

import './messages/languages/en_msg.dart';
import './messages/languages/es_msg.dart';
import './messages/languages/fr_msg.dart';
import './messages/languages/hi_msg.dart';
import './messages/languages/pt_br_msg.dart';
import './messages/messages.dart';

// ignore: avoid_classes_with_only_static_members
class TimeAgo {
  static String _default = 'en';

  static final Map<String, Messages> _messageMap = {
    'en': EnglishMessages(),
    'es': EspanaMessages(),
    'fr': FrenchMessages(),
    'hi': HindiMessages(),
    'pt': PortugueseBrazilMessages(),
    'br': PortugueseBrazilMessages(),
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
    assert(locale != null, '[locale] must not be null');
    assert(_messageMap.containsKey(locale), '[locale] must be a valid locale');
    _default = locale;
  }

  ///
  /// [getTimeAgo] formats provided [dateTime] to a formatted time
  /// like 'a minute ago'.
  /// - If [locale] is passed will look for message for that locale.
  ///

  static String getTimeAgo(DateTime dateTime, {String locale}) {
    final _locale = locale ?? _default;
    final _message = _messageMap[_locale] ?? EnglishMessages();
    final date = DateFormat.yMMMd().format(dateTime);
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
    if (seconds < 59) {
      msg = _message.secsAgo(seconds.round());
    } else if (seconds < 119) {
      msg = _message.minAgo(minutes.round());
    } else if (minutes < 59) {
      msg = _message.minsAgo(minutes.round());
    } else if (minutes < 119) {
      msg = _message.hourAgo(hours.round());
    } else if (hours < 24) {
      msg = _message.hoursAgo(hours.round());
    } else if (hours < 48) {
      msg = _message.dayAgo(hours.round());
    } else if (days < 7) {
      msg = _message.daysAgo(days.round());
    } else {
      msg = date;
    }

    return [_prefix, msg, _suffix]
        .where((result) => result != null && result.isNotEmpty)
        .join(_message.wordSeparator());
  }
}
