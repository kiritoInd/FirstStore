import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QuickLookCard extends StatelessWidget {
  final IconData firstIconData;
  final String firstText;
  final VoidCallback? onEditTap;
  final Color textColor;

  const QuickLookCard({
    Key? key,
    required this.firstIconData,
    required this.firstText,
    this.onEditTap,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              firstIconData,
              size: 20,
            ).pOnly(right: 15),
            firstText.text
                .color(textColor)
                .fontWeight(FontWeight.w500)
                .size(16)
                .make(),
            const Spacer(),
            IconButton(
              onPressed: onEditTap,
              icon: const Icon(
                Icons.edit_outlined,
                size: 25,
                color: Colors.black,
              ),
            )
          ],
        ),
      ],
    ).pOnly(top: 10, left: 10, right: 10);
  }
}
