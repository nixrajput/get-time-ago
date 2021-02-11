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

## Screenshots

<img align="left" alt="Screenshot" width="360px" src="https://raw.githubusercontent.com/nixrajput/get-time-ago/master/screenshots/get_time_ago_1.jpg" />
<img alt="Screenshot" width="360px" src="https://raw.githubusercontent.com/nixrajput/get-time-ago/master/screenshots/get_time_ago_2.jpg" />

## Connect With Me

[<img align="left" alt="nixrajput | GitHub" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/github-brands.svg" />][website]

[<img align="left" alt="nixrajput | Facebook" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/facebook-brands.svg" />][facebook]

[<img align="left" alt="nixrajput | Twitter" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/twitter-brands.svg" />][twitter]

[<img align="left" alt="nixrajput | LinkedIn" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/linkedin-in-brands.svg" />][linkedin]

[<img align="left" alt="nixrajput | Instagram" width="24px" src="https://raw.githubusercontent.com/nixrajput/nixlab-files/master/images/icons/instagram-brands.svg" />][instagram]

[pub]: https://pub.dev/packages/get_time_ago
[github]: https://github.com/nixrajput
[website]: https://github.com/nixrajput
[facebook]: https://facebook.com/nixrajput07
[twitter]: https://facebook.com/nixrajput07
[instagram]: https://instagram.com/nixrajput
[linkedin]: https://linkedin.com/in/nixrajput