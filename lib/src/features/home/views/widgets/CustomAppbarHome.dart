import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Home.dart';

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double leftPadding;
  final bool iscenterTitle;
  final Color colorTitle;
  final Color colorIcon;
  final Color backgroundColor;
  final VoidCallback? onLeadingPressed; // Add the onLeadingPressed callback

  const CustomAppBarHome({
    Key? key,
    required this.title,
    this.colorIcon = Colors.black,
    this.colorTitle = Colors.black,
    this.backgroundColor = Colors.white,
    this.leftPadding = 30,
    this.iscenterTitle = true,
    this.onLeadingPressed, // Initialize the onLeadingPressed callback
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: iscenterTitle,
      backgroundColor: backgroundColor,
      elevation: 0,
      leading: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: Icon(
          Icons.keyboard_arrow_left,
          color: colorIcon,
          size: 30,
        ),
        onPressed: () {
          if (onLeadingPressed != null) {
            onLeadingPressed!(); // Call the onLeadingPressed callback if it's provided
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          }
        },
      ),
      title: title.text.color(colorTitle).xl2.bold.make(),
    );
  }
}
