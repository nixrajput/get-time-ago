/// Utility function [convertToUrduNumbers] to convert the English number
/// into Urdu numerals

library get_time_ago;

String convertToUrduNumbers(int input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const urdu = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  var result = input.toString();
  for (var i = 0; i < english.length; i++) {
    result = result.replaceAll(english[i], urdu[i]);
  }

  return result;
}
