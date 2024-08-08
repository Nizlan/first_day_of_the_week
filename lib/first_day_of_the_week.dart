import 'first_day_of_the_week_platform_interface.dart';

class FirstDayOfTheWeek {
  FirstDayOfTheWeek._privateConstructor();

  static final FirstDayOfTheWeek _instance =
      FirstDayOfTheWeek._privateConstructor();

  static FirstDayOfTheWeek get instance => _instance;

  /// 1 - Sunday,
  /// 2 - Monday,
  /// 3 - Tuesday,
  /// 4 - Wednesday,
  /// 5 - Thursday,
  /// 6 - Friday,
  /// 7 - Saturday
  static int? value;

  static Future<void> init() async {
    value = await FirstDayOfTheWeekPlatform.instance.get();
  }
}
