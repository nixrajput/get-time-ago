A new Flutter package for getting time formats in seconds, minutes, hours, days and date.

[![pub package](https://img.shields.io/pub/v/get_time_ago.svg)](https://pub.dev/packages/get_time_ago)
[![Build Status]](https://pub.dev/packages/get_time_ago)

## Usage

```dart
import 'package:get_time_ago/get_time_ago.dart';
var dateTime = DateTime.now();

var result = TimeAgo.getTimeAgo(dateTime);
print(result);
```

If you have saved DateTime as string in database, then you can parse it as:

```dart
import 'package:get_time_ago/get_time_ago.dart';
var dateTime = timestamp; // String DateTime from backend.

var result = TimeAgo.getTimeAgo(DateTime.parse(timestamp));
print(result);
```




