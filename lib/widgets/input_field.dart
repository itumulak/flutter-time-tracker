import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? placeholder;
  final bool obscureText;
  final Function validator;
  final Function onChange;
  final TextInputType textInputType;
  final String? inputValue;
  final Icon? icon;

  const InputField({
    super.key,
    this.placeholder,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.inputValue,
    this.icon,
    required this.onChange,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: inputValue,
      validator: (value) => validator(value),
      onChanged: (value) => onChange(value),
      keyboardType: textInputType,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 15.0, end: 10.0),
          child: icon ?? icon,
        ),
        hintText: placeholder,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 40.0,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffe7eaed),
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffe7eaed),
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
      ),
    );
  }
}
