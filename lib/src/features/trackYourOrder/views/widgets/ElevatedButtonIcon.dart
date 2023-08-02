import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  final Function onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color? textColor;
  final Color? IconColor;
  final double textsize;
  final IconData iconData;
  final double borderradius; // New parameter for icon

  const CustomElevatedButtonIcon({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.buttonColor = const Color.fromARGB(255, 240, 240, 240),
    this.textColor,
    this.IconColor,
    this.textsize = 16,
    required this.iconData,
    this.borderradius = 7,
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
            borderRadius: BorderRadius.circular(borderradius),
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 14,
              color: IconColor,
            ).pOnly(right: 10), // Use the provided iconData to show the icon
            Text(
              buttonText,
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: textsize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
