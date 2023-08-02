import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbarForms extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbarForms({super.key});

  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: ewhitishBg,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(
            CupertinoIcons.arrow_left,
            size: 25,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
