import 'package:flutter/cupertino.dart';

class WelcomeHeadline extends StatelessWidget {
  const WelcomeHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Time Tracker',
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          'Enter your email address and password to access admin panel',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
