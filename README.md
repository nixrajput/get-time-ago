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

## Table of Contents

- [get\_time\_ago](#get_time_ago)
  - [Table of Contents](#table-of-contents)
  - [Demo](#demo)
  - [Installation](#installation)
  - [Usage](#usage)
    - [Formatting String as `get_time_ago`](#formatting-string-as-get_time_ago)
    - [Setting default locale](#setting-default-locale)
    - [Setting Custom Locale \& Messages](#setting-custom-locale--messages)
  - [Contributing](#contributing)
  - [License](#license)
  - [Sponsor Me](#sponsor-me)
  - [Connect With Me](#connect-with-me)
  - [Activities](#activities)

## Demo

[View Demo](https://nixrajput.github.io/get-time-ago)

## Installation

Add `get_time_ago` as a dependency in your pubspec.yaml file.

```dart
dependencies:
  get_time_ago: ^latest_version
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

If you have saved a `DateTime` object as a String into a variable, database or cloud, then you have to first convert the String into `DateTime` object and then pass it as argument in `parse` method of `get_time_ago` plugin to format it into `get_time_ago` format by following steps:

```dart
// Import the plugin
import 'package:get_time_ago/get_time_ago.dart';

var _timestamp = '2021-05-10 05:21:37.712498'; // [DateTime] formatted as String.
var _convertedTimestamp = DateTime.parse(_timestamp); // Converting into [DateTime] object
var result = GetTimeAgo.parse(_convertedTimestamp); 
print(result);
```

### Setting default locale

If you want to change your default `locale`, then call `setDefaultLocale` method and pass the `locale` code as the argument.

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

## Contributing

If you would like to contribute to this project, feel free to fork the repository, make your changes, and submit a pull request. Please follow the guidelines in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Sponsor Me

- By sponsoring my efforts, you're not merely contributing to the development of my projects; you're investing in its growth and sustainability.
- Your support empowers me to dedicate more time and resources to improving the project's features, addressing issues, and ensuring its continued relevance in the rapidly evolving landscape of technology.
- Your sponsorship directly fuels innovation, fosters a vibrant community, and helps maintain the project's high standards of quality. Together, we can shape the future of the projects and make a lasting impact in the open-source community.
- Thank you for considering sponsoring my work!

[![Sponsor](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=%23fe8e86)](https://github.com/sponsors/nixrajput)

## Connect With Me

[![GitHub: nixrajput](https://img.shields.io/badge/nixrajput-EFF7F6?logo=GitHub&logoColor=333&link=https://www.github.com/nixrajput)][github]
[![Linkedin: nixrajput](https://img.shields.io/badge/nixrajput-EFF7F6?logo=LinkedIn&logoColor=blue&link=https://www.linkedin.com/in/nixrajput)][linkedin]
[![Instagram: nixrajput](https://img.shields.io/badge/nixrajput-EFF7F6?logo=Instagram&link=https://www.instagram.com/nixrajput)][instagram]
[![Twitter: nixrajput07](https://img.shields.io/badge/nixrajput-EFF7F6?logo=X&logoColor=333&link=https://x.com/nixrajput)][twitter]
[![Telegram: nixrajput](https://img.shields.io/badge/nixrajput-EFF7F6?logo=Telegram&link=https://telegram.me/nixrajput)][telegram]
[![Gmail: nkr.nikhi.nkr@gmail.com](https://img.shields.io/badge/nkr.nikhil.nkr@gmail.com-EFF7F6?logo=Gmail&link=mailto:nkr.nikhil.nkr@gmail.com)][gmail]

## Activities

![Alt](https://repobeats.axiom.co/api/embed/cbde7baa03c95d2e3261af1fa679d94570341b08.svg "Repobeats analytics image")

[pub]: https://pub.dev/packages/get_time_ago
[github]: https://github.com/nixrajput
[telegram]: https://telegram.me/nixrajput
[twitter]: https://twitter.com/nixrajput07
[instagram]: https://instagram.com/nixrajput
[linkedin]: https://linkedin.com/in/nixrajput
[gmail]: mailto:nkr.nikhil.nkr@gmail.com
[releases]: https://github.com/nixrajput/get-time-ago/releases
[repo]: https://github.com/nixrajput/get-time-ago
[issues]: https://github.com/nixrajput/get-time-ago/issues
[license]: https://github.com/nixrajput/get-time-ago/blob/master/LICENSE
[pulls]: https://github.com/nixrajput/get-time-ago/pulls
