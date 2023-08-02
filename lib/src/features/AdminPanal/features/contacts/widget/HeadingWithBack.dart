import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HeadingWithBack extends StatelessWidget {
  const HeadingWithBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 35,
          ),
        ),
        const Text(
          'Manage Your Contact',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ).pOnly(top: 5, left: 10),
      ],
    );
  }
}
