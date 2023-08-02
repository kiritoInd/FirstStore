import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';

class CustomGradientTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;

  const CustomGradientTextButton({
    required this.text,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              contactDrawerGradient1,
              contactDrawerGradient2,
            ], // Adjust the gradient colors as desired
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                Icon(
                  icon!,
                  color: Colors.black,
                  size: 19,
                ),
              if (icon != null) const SizedBox(width: 5),
              Text(
                text,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
