import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDrawerButton extends StatelessWidget {
  final String title;
  final IconData icondata;
  final void Function()? onPressed; // Add this onPressed function
  const CustomDrawerButton({
    required this.title,
    required this.icondata,
    this.onPressed, // Provide a default value if you want
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 320,
        height: 40,
        child: SizedBox(
          width: 220,
          height: 40,
          child: Row(
            children: [
              Icon(
                icondata,
                size: 23,
                color: Colors.white,
              ),
              (title).text.color(Colors.white).size(19).make().pOnly(left: 30),
            ],
          ),
        ).pOnly(left: 10),
      ),
    );
  }
}
