import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_day_of_the_week/first_day_of_the_week_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFirstDayOfTheWeek platform = MethodChannelFirstDayOfTheWeek();
  const MethodChannel channel = MethodChannel('first_day_of_the_week');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
