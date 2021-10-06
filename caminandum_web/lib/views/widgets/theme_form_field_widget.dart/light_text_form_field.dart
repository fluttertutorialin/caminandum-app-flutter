import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightTextFormField extends StatelessWidget {
  final double? height;
  final TextEditingController controller;
  final Function(String?)? onSaved;
  final bool? obscureText;
  final String? Function(String?)? validator;
  LightTextFormField({
    Key? key,
    required this.controller,
    this.onSaved,
    this.validator,
    this.obscureText = false,
    this.height = 35,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        obscureText: obscureText!,
        controller: controller,
        onSaved: (value) {
          onSaved!(value);
        },
        validator: (value) {
          return validator == null ? null : validator!(value);
        },
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 3.0),
          ),
        ),
      ),
    );
  }
}
