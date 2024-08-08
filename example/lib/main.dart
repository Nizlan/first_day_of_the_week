import 'package:flutter/material.dart';
import 'package:first_day_of_the_week/first_day_of_the_week.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirstDayOfTheWeek.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First day of the week example'),
        ),
        body: Center(
          child:
              Text('first day of week on phone: ${FirstDayOfTheWeek.value}\n'),
        ),
      ),
    );
  }
}
