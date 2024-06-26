import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/screen/register_screen.dart';

class WelcomeSignUp extends StatelessWidget {
  const WelcomeSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Do you have an account? ',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
              if (context.mounted) {
                Navigator.pushNamed(context, RegisterScreen.route);
              }
            },
            text: 'Sign up',
            style: const TextStyle(
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
