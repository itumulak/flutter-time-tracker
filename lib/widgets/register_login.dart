import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/screen/register_screen.dart';
import 'package:time_tracker/screen/welcome_screen.dart';

class RegisterLogin extends StatelessWidget {
  const RegisterLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Already have an account? ',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
              if (context.mounted) {
                Navigator.pushNamed(context, WelcomeScreen.route);
              }
            },
            text: 'Login',
            style: const TextStyle(
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
