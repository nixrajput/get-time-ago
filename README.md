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
    - [Contributors](#contributors)
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

If you have saved a `DateTime` object as a String into a variable, database or cloud, then you have
to first convert the String into `DateTime` object and then pass it as argument in `parse` method
of `get_time_ago` plugin to format it into `get_time_ago` format by following steps:

```dart
// Import the plugin
import 'package:get_time_ago/get_time_ago.dart';

var _timestamp = '2021-05-10 05:21:37.712498'; // [DateTime] formatted as String.
var _convertedTimestamp = DateTime.parse(_timestamp); // Converting into [DateTime] object
var result = GetTimeAgo.parse(_convertedTimestamp); 
print(result);
```

### Setting default locale

If you want to change your default `locale`, then call `setDefaultLocale` method and pass
the `locale` code as the argument.

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

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://nixrajput.vercel.app"><img src="https://avatars.githubusercontent.com/u/10887215?s=100&v=4" width="100px;" alt="Nikhil Rajput"/><br /><sub><b>Nikhil Rajput</b></sub></a><br /><a href="#question-nixrajput" title="Answering Questions">💬</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=nixrajput" title="Documentation">📖</a> <a href="#maintenance-nixrajput" title="Maintenance">🚧</a> <a href="#infra-nixrajput" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Anixrajput" title="Reviewed Pull Requests">👀</a> <a href="#talk-nixrajput" title="Talks">📢</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Mejans"><img src="https://avatars.githubusercontent.com/u/61360811?s=100&v=4" width="100px;" alt="Mejans"/><br /><sub><b>Mejans</b></sub></a><br /> <a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=Mejans" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3AMejans" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/msalman2890"><img src="https://avatars.githubusercontent.com/u/64697477?s=100&v=4" width="100px;" alt="Muhammad Salman Bediya"/><br /><sub><b>Muhammad Salman Bediya</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=msalman2890" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Amsalman2890" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/fluxion8"><img src="https://avatars.githubusercontent.com/u/67543117?s=100&v=4" width="100px;" alt="fluxion8"/><br /><sub><b>fluxion8</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=fluxion8" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Afluxion8" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/PascalOtto"><img src="https://avatars.githubusercontent.com/u/43848718?s=100&v=4" width="100px;" alt="Pascal Otto"/><br /><sub><b>Pascal Otto</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=PascalOtto" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3APascalOtto" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/melodysdreamj"><img src="https://avatars.githubusercontent.com/u/21379657?s=100&v=4" width="100px;" alt="june lee"/><br /><sub><b>june lee</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=melodysdreamj" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Amelodysdreamj" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/ywake"><img src="https://avatars.githubusercontent.com/u/59673834?s=100&v=4" width="100px;" alt="ywake"/><br /><sub><b>ywake</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=ywake" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Aywake" title="Reviewed Pull Requests">👀</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/kidozh"><img src="https://avatars.githubusercontent.com/u/11661760?s=100&v=4" width="100px;" alt="Jiduo Zhang"/><br /><sub><b>Jiduo Zhang</b></sub></a><br /> <a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=kidozh" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Akidozh" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/silviuilas"><img src="https://avatars.githubusercontent.com/u/56910806?s=100&v=4" width="100px;" alt="silviuilas"/><br /><sub><b>silviuilas</b></sub></a><br /> <a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=silviuilas" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Asilviuilas" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Rexios80"><img src="https://avatars.githubusercontent.com/u/7896519?s=100&v=4" width="100px;" alt="Rexios"/><br /><sub><b>Rexios</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=Rexios80" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3ARexios80" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/minhdanh"><img src="https://avatars.githubusercontent.com/u/4865412?s=100&v=4" width="100px;" alt="Minh-Danh"/><br /><sub><b>Minh-Danh</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=minhdanh" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Aminhdanh" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/harloom"><img src="https://avatars.githubusercontent.com/u/28688707?s=100&v=4" width="100px;" alt="Ilham solehudin"/><br /><sub><b>Ilham solehudin</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=harloom" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3Aharloom" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/WingCH"><img src="https://avatars.githubusercontent.com/u/19588517?s=100&v=4" width="100px;" alt="WingCH"/><br /><sub><b>WingCH</b></sub></a><br /><a href="https://github.com/nixrajput/flutter_carousel_widget/commits?author=WingCH" title="Documentation">📖</a> <a href="https://github.com/nixrajput/flutter_carousel_widget/pulls?q=is%3Apr+reviewed-by%3AWingCH" title="Reviewed Pull Requests">👀</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

## Contributing

If you would like to contribute to this project, feel free to fork the repository, make your
changes, and submit a pull request. Please follow the guidelines in
the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Sponsor Me

- By sponsoring my efforts, you're not merely contributing to the development of my projects; you're
  investing in its growth and sustainability.
- Your support empowers me to dedicate more time and resources to improving the project's features,
  addressing issues, and ensuring its continued relevance in the rapidly evolving landscape of
  technology.
- Your sponsorship directly fuels innovation, fosters a vibrant community, and helps maintain the
  project's high standards of quality. Together, we can shape the future of the projects and make a
  lasting impact in the open-source community.
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
