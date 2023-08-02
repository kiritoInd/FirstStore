import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarStore extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(35);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 35,
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: const Icon(
          Icons.keyboard_arrow_left,
          size: 30,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(
            CupertinoIcons.question_circle,
            size: 27,
            color: EstartBackgroundColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
