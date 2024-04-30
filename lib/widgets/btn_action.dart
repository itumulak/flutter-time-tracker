import 'package:flutter/material.dart';

class BtnAction extends StatelessWidget {
  final Function onPressed;
  final String label;

  const BtnAction({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(2.0),
        child: MaterialButton(
          onPressed: () => onPressed(),
          minWidth: double.infinity,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
