import 'package:flutter/material.dart';
import 'package:slicing_laundry/widgets/text_label.dart';

class AppButton extends StatelessWidget {
  final String text;
  final double? height, width;
  final VoidCallback onPressed;
  final Color? backgroundColor, splashColor, textColor;
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.backgroundColor,
    this.splashColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40.0,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shadowColor: Colors.transparent,
          foregroundColor: splashColor ?? Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: TextLabel(
          text: text,
          color: textColor,
        ),
      ),
    );
  }
}
