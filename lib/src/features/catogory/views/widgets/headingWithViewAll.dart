import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HeadingWithViewAll extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const HeadingWithViewAll({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1, left: 10),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Text(
                  'View All',
                  style: TextStyle(fontSize: 14),
                ).pOnly(top: 4),
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: onPressed,
                  icon: const Icon(Icons.arrow_forward),
                ).pOnly(top: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
