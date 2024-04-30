import 'package:flutter/cupertino.dart';

class RegisterHeadline extends StatelessWidget {
  const RegisterHeadline({super.key});

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
          'Fill in the information to create an account.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
