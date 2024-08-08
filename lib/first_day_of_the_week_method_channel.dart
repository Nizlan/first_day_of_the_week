import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'first_day_of_the_week_platform_interface.dart';

/// An implementation of [FirstDayOfTheWeekPlatform] that uses method channels.
class MethodChannelFirstDayOfTheWeek extends FirstDayOfTheWeekPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('first_day_of_the_week');

  @override
  Future<int?> get() async {
    final version = await methodChannel.invokeMethod<int>('getFirstDayOfWeek');
    return version;
  }
}
