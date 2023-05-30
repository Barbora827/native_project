import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.align});

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.w500,
      ),
    );
  }
}
