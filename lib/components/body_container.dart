import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final Gradient gradient = const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xffc850c0),
        Color(0xff4158d0),
      ]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: gradient),
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 480
              ),
              child: child,
            )
          )
        ],
      ),
    );
  }
}
