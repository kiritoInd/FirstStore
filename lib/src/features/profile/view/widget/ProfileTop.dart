import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../profile.dart';

class Profiletop extends StatelessWidget {
  const Profiletop({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 345,
            height: 152,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfff9f58d),
            ),
          ),
          Positioned(
            top: 36, // Halfway point of the colored container
            left: (size.width - 140) / 2, // Centered horizontally
            child: Container(
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey, // Replace with your desired color
              ),
              child: Image.asset(
                ImageAssets.profile,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 156,
            left: 20, // Halfway point of the colored container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ("Ahanshi").text.xl.semiBold.make(),
                SizedBox(
                  width: size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            CupertinoIcons.placemark,
                          ),
                          ("Uninte States").text.xl.caption(context).make()
                        ],
                      ).pOnly(top: 5),
                      SizedBox(
                        width: 100,
                        child: CustomElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile(),
                              ),
                            );
                          },
                          buttonText: ("Edit Profile"),
                          buttonColor: EstartBackgroundColor,
                          textColor: Colors.white,
                          textsize: 13,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
