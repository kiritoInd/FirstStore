import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color? textColor;
  final double textsize;
  final bool isBold;
  final double buttonRadius;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.buttonColor = const Color.fromARGB(255, 240, 240, 240),
    this.textColor,
    this.textsize = 16,
    this.isBold = true,
    this.buttonRadius = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 30.0, // Set your desired width
      child: ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontSize: textsize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
