import '../../utils/utility.dart';
import '../messages.dart';

class ItalianMessages implements Messages {
  @override
  String prefixAgo() => '';
  
  @override
  String suffixAgo() => 'fa';
  
  @override
  String secsAgo(int seconds) => '$seconds secondi';
  
  @override
  String minAgo(int minutes) => 'un minuto';
  
  @override
  String minsAgo(int minutes) => '$minutes minuti';
  
  @override
  String hourAgo(int minutes) => 'un ora';
  
  @override
  String hoursAgo(int hours) => '$hours ore';
  
  @override
  String dayAgo(int hours) => 'un giorno';
  
  @override
  String daysAgo(int days) => '$days giorni';
  
  @override
  String wordSeparator() => ' ';
}
