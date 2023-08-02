import 'package:easyshop_app/src/features/profile/view/ProfilePage.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()?
      onProfileIconPressed; // Callback function for profile icon press

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onProfileIconPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ELightGreen,
      shadowColor: Colors.transparent,
      title: Container(
        width: size.width,
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: EtextColorWhite,
            fontSize: 24,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(
                left: 8,
                right: 17,
                top: 8,
                bottom: 8), // Add your desired padding here
            child: CircleAvatar(
              backgroundColor:
                  EtextColorWhite, // You can use any color you like for the circle background
              radius: 20, // Adjust the radius according to your needs
              backgroundImage: AssetImage(
                  'assets/images/profile.png'), // Replace this with the image you want to display
            ),
          ),
        ),
      ],
    );
  }
}
