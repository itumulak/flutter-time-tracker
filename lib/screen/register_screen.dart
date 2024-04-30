import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/register_form.dart';
import 'package:time_tracker/widgets/register_headline.dart';
import 'package:time_tracker/widgets/register_login.dart';

import '../widgets/btn_action.dart';
import '../widgets/input_field.dart';
import '../widgets/welcome_forgot_password.dart';
import '../widgets/welcome_signup.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const String route = '/register';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 30.0,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RegisterHeadline(),
                        SizedBox(
                          height: 30.0,
                        ),
                        RegisterForm(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const RegisterLogin(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
