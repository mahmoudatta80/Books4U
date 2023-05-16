import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final void Function()? onPressed;
  final String text;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.onPressed,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
