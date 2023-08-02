import 'package:flutter/material.dart';

class BulletText extends StatelessWidget {
  final String text;

  BulletText({required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: 8.0, bottom: 6),
              child: Icon(
                Icons.circle,
                size: 8,
                color: Colors.black87,
              ),
            ),
          ),
          TextSpan(
            text: text,
            style: const TextStyle(
              fontSize: 14,
              // letterSpacing: ,

              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
