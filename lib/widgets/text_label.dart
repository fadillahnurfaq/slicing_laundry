import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String text;
  final double? size, height, letterSpacing;
  final TextAlign? align;
  final TextDecoration? decoration;
  final Color? color;
  final FontWeight? fontWeight;

  const TextLabel(
      {Key? key,
      required this.text,
      this.size,
      this.color,
      this.fontWeight,
      this.decoration,
      this.align,
      this.letterSpacing,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      style: TextStyle(
        decoration: decoration ?? TextDecoration.none,
        color: color ?? Colors.black,
        fontSize: size ?? 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: height ?? 1.2,
        letterSpacing: letterSpacing ?? 0.5,
      ),
    );
  }
}
