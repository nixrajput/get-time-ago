# get_time_ago

A Flutter package to convert and format `DateTime` object into `get_time_ago` format to get  
String like `10 seconds ago`, `a minute ago`, `7 hours ago`, etc.

[![pub package](https://img.shields.io/pub/v/get_time_ago.svg)][pub]
[![CI](https://github.com/nixrajput/get-time-ago/workflows/CI/badge.svg)][pub]

## Installation

Add `get_time_ago` as a dependency in your pubspec.yaml file.

```dart
dependencies:
  get_time_ago: ^1.1.6
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

## Setting Custom Locale & Messages

**Implementing and Adding Custom Messages**

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

**Overriding `en` Locale Messages with Custom Messages**

```dart
GetTimeAgo.setCustomLocaleMessages('en', CustomMessages());
```

## Screenshots

<img width="400" alt="Screenshot_1" src="https://raw.githubusercontent.com/nixrajput/get-time-ago/master/screenshots/get_time_ago_1.png" />
<img width="400" alt="Screenshot_2" src="https://raw.githubusercontent.com/nixrajput/get-time-ago/master/screenshots/get_time_ago_2.png" />


## Connect With Me

[<img align="left" alt="nixrajput | Website" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/globe-icon.svg" />][website]

[<img align="left" alt="nixrajput | GitHub" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/github-brands.svg" />][github]

[<img align="left" alt="nixrajput | Instagram" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/instagram-brands.svg" />][instagram]

[<img align="left" alt="nixrajput | Facebook" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/facebook-brands.svg" />][facebook]

[<img align="left" alt="nixrajput | Twitter" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/twitter-brands.svg" />][twitter]

[<img align="left" alt="nixrajput | LinkedIn" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/linkedin-in-brands.svg" />][linkedin]

[pub]: https://pub.dev/packages/get_time_ago
[github]: https://github.com/nixrajput
[website]: https://nixlab.co.in
[facebook]: https://facebook.com/nixrajput07
[twitter]: https://twitter.com/nixrajput07
[instagram]: https://instagram.com/nixrajput
[linkedin]: https://linkedin.com/in/nixrajput