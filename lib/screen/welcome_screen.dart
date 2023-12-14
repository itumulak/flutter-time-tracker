import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/screen/tracker_screen.dart';
import 'package:time_tracker/widgets/welcome_headline.dart';
import 'package:time_tracker/widgets/welcome_login.dart';

import '../widgets/btn_action.dart';
import '../widgets/input_field.dart';
import '../widgets/welcome_forgot_password.dart';
import '../widgets/welcome_signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String route = '/welcome';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffe7eaed),
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(0, 15),
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xffe7eaed),
                      width: 1.0,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0,),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      WelcomeHeadline(),
                      SizedBox(
                        height: 30.0,
                      ),
                      WelcomeLoginForm(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const WelcomeForgotPassword(),
                const SizedBox(
                  height: 20.0,
                ),
                const WelcomeSignUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
