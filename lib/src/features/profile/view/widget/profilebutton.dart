import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText; // New parameter for custom text

  ProfileButton(
      {required this.onPressed,
      required this.buttonText}); // Added buttonText to constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              buttonText, // Use the custom text here
              style: const TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.keyboard_arrow_right,
                color: Color.fromARGB(255, 0, 0, 0)),
          ],
        ),
      ),
    );
  }
}
