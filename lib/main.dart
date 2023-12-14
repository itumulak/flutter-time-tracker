import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/screen/tracker_screen.dart';
import 'package:time_tracker/screen/welcome_screen.dart';

void main() {
  runApp(const TimeTracker());
}

class TimeTracker extends StatelessWidget {
  const TimeTracker({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: Brightness.light,
          background: const Color(0xfff4f5f7)
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const WelcomeScreen(),
      initialRoute: WelcomeScreen.route,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case TrackerScreen.route:
            return CupertinoPageRoute(builder: (_) => const TrackerScreen());
          case WelcomeScreen.route:
          default:
            return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
        }
      },
    );
  }
}
