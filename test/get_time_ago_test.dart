import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_time_ago/get_time_ago.dart';

void main() {
  const channel = MethodChannel('get_time_ago');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async => '42');
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(TimeAgo.getTimeAgo(DateTime.now()), '');
  });
}
