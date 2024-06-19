import 'package:flutter/material.dart';
import 'package:time_tracker/components/body_container.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: BodyContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xffe7eaed),
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30.0,
                ),
                child: const Column(
                  children: [
                    WelcomeHeadline(),
                    SizedBox(
                      height: 30.0,
                    ),
                    WelcomeLoginForm(),
                    SizedBox(
                      height: 20.0,
                    ),
                    WelcomeForgotPassword(),
                    SizedBox(
                      height: 20.0,
                    ),
                    WelcomeSignUp(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
