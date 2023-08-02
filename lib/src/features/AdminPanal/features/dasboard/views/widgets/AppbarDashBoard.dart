import 'package:easyshop_app/src/features/profile/view/ProfilePage.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';

class AppbarDashBoard extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ELightGreenhome,
      toolbarHeight: 50,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProfilePage(), // Replace with your actual profile page widget
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 8, right: 17, top: 8, bottom: 8),
            child: CircleAvatar(
              backgroundColor: EtextColorWhite,
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
      ],
    );
  }
}
