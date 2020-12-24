# get_time_ago

A Flutter plugin to format `DateTime` into `get_time_ago` to get `DateTime` like `10 seconds ago` `a minute ago` `7 hours ago`.

[![pub package](https://img.shields.io/pub/v/get_time_ago.svg)][pub]
[![CI](https://github.com/nixrajput/get-time-ago/workflows/CI/badge.svg)][pub]

## Usage

Format any `DateTime` into `get_time_ago` format by following steps:

```dart
import 'package:get_time_ago/get_time_ago.dart';

var _dateTime = DateTime.now().subtract(const Duration(minutes: 10));
print(TimeAgo.getTimeAgo(_dateTime)); // 10 minutes ago
print(TimeAgo.getTimeAgo(_dateTime, locale:'es')); // hace 10 minutos
```

### Formatting String as `get_time_ago`

If you saved a `DateTime` as a formatted String to any variable, database or cloud, then you can parse this `DateTime` and format it into `get_time_ago` format by following steps:

```dart
import 'package:get_time_ago/get_time_ago.dart';

var _timestamp = '2020-09-10 05:21:37.712498'; // [DateTime] formatted as String.
var result = TimeAgo.getTimeAgo(DateTime.parse(_timestamp));
print(result);
```

### Setting default locale

If you want to change default `locale`, then call `setDefaultLocale` method into a function.

```dart
import 'package:get_time_ago/get_time_ago.dart';

@override
  void initState() {
    super.initState();
    TimeAgo.setDefaultLocale('fr'); // Set default locale to French
  }
```

[pub]: https://pub.dev/packages/get_time_ago