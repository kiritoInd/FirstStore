import 'package:flutter/material.dart';
import 'package:easyshop_app/src/features/profile/view/ProfilePage.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final Function()? onIconPressed; // Callback function for profile icon press
  final Widget? rightWidget;
  final BottomStackcolor;

  const CustomAppBarWidget({
    Key? key,
    required this.title,
    this.onIconPressed,
    this.rightWidget,
    this.BottomStackcolor = Colors.white,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(140); // Set the preferred height

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(color: ELightGreen),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: EtextColorWhite,
                    fontSize: 24,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 8, right: 17, top: 8, bottom: 8),
                    child: CircleAvatar(
                      backgroundColor: EtextColorWhite,
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                ),
              ],
            ).pOnly(left: 20, top: 32, right: 10),
          ),
          Container(
            height: 59,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: BottomStackcolor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      // If onProfileIconPressed is not provided, pop the page
                      if (onIconPressed == null) {
                        Navigator.of(context).pop();
                      } else {
                        onIconPressed!();
                      }
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                      size: 35,
                    )),
                rightWidget ?? const SizedBox(),
              ],
            ).pOnly(right: 20, top: 2, left: 10),
          ),
        ],
      ),
    );
  }
}
