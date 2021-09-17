import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key, this.label, this.color, this.size, this.weight, this.align})
      : super(key: key);
  final label;
  final color;
  final size;
  final weight;
  final align;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        letterSpacing: 0.3,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
