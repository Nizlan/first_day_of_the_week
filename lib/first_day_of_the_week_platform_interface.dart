import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'first_day_of_the_week_method_channel.dart';

abstract class FirstDayOfTheWeekPlatform extends PlatformInterface {
  /// Constructs a FirstDayOfTheWeekPlatform.
  FirstDayOfTheWeekPlatform() : super(token: _token);

  static final Object _token = Object();

  static FirstDayOfTheWeekPlatform _instance = MethodChannelFirstDayOfTheWeek();

  /// The default instance of [FirstDayOfTheWeekPlatform] to use.
  ///
  /// Defaults to [MethodChannelFirstDayOfTheWeek].
  static FirstDayOfTheWeekPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FirstDayOfTheWeekPlatform] when
  /// they register themselves.
  static set instance(FirstDayOfTheWeekPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<int?> get() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
