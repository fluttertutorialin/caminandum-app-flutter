import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText;
  final String? Function(String?)? validator;

  CustomTextFormField({
    Key? key,
    required this.controller,
    this.onSaved,
    this.validator,
    this.keyboardType = TextInputType.emailAddress,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      keyboardType: keyboardType,
      onSaved: (value) {
        onSaved!(value);
      },
      validator: (value) {
        return validator == null ? null : validator!(value);
      },
      decoration: InputDecoration(
        fillColor: Colors.white38,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.blueGrey[800]!,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.blueGrey[800]!,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 2,
          ),
        ),
      ),
    );
  }
}
