import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
              if (kDebugMode) {
                print('Sign up clicked.');
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
