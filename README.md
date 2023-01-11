# get_time_ago

A Flutter package to convert and format `DateTime` object into `get_time_ago` format to get  
String like `10 seconds ago`, `a minute ago`, `7 hours ago`, etc.

[![pub package](https://img.shields.io/pub/v/get_time_ago.svg?label=Version)][pub]
[![Stars](https://img.shields.io/github/stars/nixrajput/get-time-ago?label=Stars)][repo]
[![Forks](https://img.shields.io/github/forks/nixrajput/get-time-ago?label=Forks)][repo]
[![Watchers](https://img.shields.io/github/watchers/nixrajput/get-time-ago?label=Watchers)][repo]
[![Contributors](https://img.shields.io/github/contributors/nixrajput/get-time-ago?label=Contributors)][repo]
[![CI](https://github.com/nixrajput/get-time-ago/workflows/CI/badge.svg)][pub]

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/nixrajput/get-time-ago?label=Latest)][releases]
[![GitHub last commit](https://img.shields.io/github/last-commit/nixrajput/get-time-ago?label=Last+Commit)][repo]
[![GitHub issues](https://img.shields.io/github/issues/nixrajput/get-time-ago?label=Issues)][issues]
[![GitHub pull requests](https://img.shields.io/github/issues-pr/nixrajput/get-time-ago?label=Pull+Requests)][pulls]
[![GitHub Licence](https://img.shields.io/github/license/nixrajput/get-time-ago?label=Licence)][license]

## Installation

Add `get_time_ago` as a dependency in your pubspec.yaml file.

```dart
dependencies:
  get_time_ago: latest_version
```

## Usage

Format any `DateTime` object into `get_time_ago` format by following steps:

```dart
// Import the plugin
import 'package:get_time_ago/get_time_ago.dart';

// Pass DateTime object as argument in the method
var _dateTime = DateTime.now().subtract(const Duration(minutes: 10)); // [DateTime] object
print(GetTimeAgo.parse(_dateTime)); // 10 minutes ago

// Formatting with locale
print(GetTimeAgo.parse(_dateTime, locale:'es')); // hace 10 minutos
```

### Formatting String as `get_time_ago`

If you have saved a `DateTime` object as a String into a variable, database or cloud, then you have to
first convert the String into `DateTime` object and then pass it as argument in `parse` method of
`get_time_ago` plugin to format it into `get_time_ago` format by following steps:

```dart
// Import the plugin
import 'package:get_time_ago/get_time_ago.dart';

var _timestamp = '2021-05-10 05:21:37.712498'; // [DateTime] formatted as String.
var _convertedTimestamp = DateTime.parse(_timestamp); // Converting into [DateTime] object
var result = GetTimeAgo.parse(_convertedTimestamp); 
print(result);
```

### Setting default locale

If you want to change your default `locale`, then call `setDefaultLocale` method and pass the
`locale` code as the argument.

```dart
// Import the plugin
import 'package:get_time_ago/get_time_ago.dart';

@override
  void initState() {
    super.initState();
    GetTimeAgo.setDefaultLocale('fr'); // Sets the default locale to French
  }
```

### Setting Custom Locale & Messages

Implementing and Adding Custom Messages

```dart
class CustomMessages implements Messages {
  @override
  String prefixAgo() => '';

  @override
  String suffixAgo() => 'ago';

  @override
  String secsAgo(int seconds) => '$seconds seconds';

  @override
  String minAgo(int minutes) => 'a minute';

  @override
  String minsAgo(int minutes) => '$minutes minutes';

  @override
  String hourAgo(int minutes) => 'an hour';

  @override
  String hoursAgo(int hours) => '$hours hours';

  @override
  String dayAgo(int hours) => 'a day';

  @override
  String daysAgo(int days) => '$days days';

  @override
  String wordSeparator() => ' ';
}
```

Overriding `en` Locale Messages with Custom Messages

```dart
GetTimeAgo.setCustomLocaleMessages('en', CustomMessages());
```

## Demo

[View Demo](https://nixrajput.github.io/get-time-ago)

## Activities

![Alt](https://repobeats.axiom.co/api/embed/cbde7baa03c95d2e3261af1fa679d94570341b08.svg "Repobeats analytics image")

## Connect With Me

[![Instagram: nixrajput](https://img.shields.io/badge/nixrajput-141430?logo=Instagram&logoColor=fff)][instagram]
[![Linkedin: nixrajput](https://img.shields.io/badge/nixrajput-141430?logo=Linkedin&logoColor=fff)][linkedin]
[![GitHub: nixrajput](https://img.shields.io/badge/nixrajput-141430?logo=Github&logoColor=fff)][github]
[![Twitter: nixrajput07](https://img.shields.io/badge/nixrajput07-141430?logo=Twitter&logoColor=fff)][twitter]
[![Facebook: nixrajput07](https://img.shields.io/badge/nixrajput07-141430?logo=Facebook&logoColor=fff)][facebook]

[pub]: https://pub.dev/packages/get_time_ago
[github]: https://github.com/nixrajput
[facebook]: https://facebook.com/nixrajput07
[twitter]: https://twitter.com/nixrajput07
[instagram]: https://instagram.com/nixrajput
[linkedin]: https://linkedin.com/in/nixrajput
[releases]: https://github.com/nixrajput/get-time-ago/releases
[repo]: https://github.com/nixrajput/get-time-ago
[issues]: https://github.com/nixrajput/get-time-ago/issues
[license]: https://github.com/nixrajput/get-time-ago/blob/master/LICENSE.md
[pulls]: https://github.com/nixrajput/get-time-ago/pulls
