import 'package:flutter/material.dart';
import '../screen/tracker_screen.dart';
import 'btn_action.dart';
import 'input_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InputField(
              placeholder: 'Your Name',
              textInputType: TextInputType.emailAddress,
              onChange: (value) {},
              validator: () {},
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InputField(
              placeholder: 'Your Email Address',
              textInputType: TextInputType.emailAddress,
              onChange: (value) {},
              validator: () {},
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InputField(
              placeholder: 'Your Password',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              onChange: (value) {},
              validator: () {},
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InputField(
              placeholder: 'Re-type Password',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              onChange: (value) {},
              validator: () {},
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          BtnAction(
            onPressed: () {
              if (context.mounted) {
                Navigator.pushNamed(context, TrackerScreen.route);
              }
            },
            label: 'Register',
          ),
        ],
      ),
    );
  }
}
