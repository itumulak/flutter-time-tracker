import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/screen/register_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff9053c7),
          brightness: Brightness.light,
          background: const Color(0xff9053c7)
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
          case RegisterScreen.route:
            return CupertinoPageRoute(builder: (_) => const RegisterScreen());
          case WelcomeScreen.route:
          default:
            return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
        }
      },
    );
  }
}
