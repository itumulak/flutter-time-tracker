import 'package:flutter/material.dart';
import '../screen/tracker_screen.dart';
import 'btn_action.dart';
import 'input_field.dart';

class WelcomeLoginForm extends StatelessWidget {
  const WelcomeLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return                       Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InputField(
              placeholder: 'Enter your email address.',
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
              placeholder: 'Enter your password.',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              onChange: (value) {},
              validator: () {},
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: false,
            onChanged: (value) {},
            contentPadding: EdgeInsets.zero,
            title: const Text('Remember me'),
          ),
          BtnAction(
            onPressed: () {
              if (context.mounted) {
                Navigator.pushNamed(context, TrackerScreen.route);
              }
            },
            label: 'Log In',
          ),
        ],
      ),
    );
  }
}
