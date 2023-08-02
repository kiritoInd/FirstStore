import 'package:easyshop_app/src/features/AdminPanal/features/contacts/ManageContact.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/dasboard/views/widgets/drawerButton.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/views/StoreDetails.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storePickup/views/storePickup.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDrawerDash extends StatelessWidget {
  const CustomDrawerDash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [gradientDrawer1, gradientDrawer2],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDrawerButton(
              icondata: CupertinoIcons.square_grid_2x2,
              title: "Dashboard",
              onPressed: () {},
            ).pOnly(top: 90),
            CustomDrawerButton(
              icondata: CupertinoIcons.person_fill,
              title: "Contacts",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ManageContactPage(),
                  ),
                );
              },
            ),
            CustomDrawerButton(
              icondata: CupertinoIcons.wand_stars_inverse,
              title: "Analytics",
              onPressed: () {},
            ),
            CustomDrawerButton(
              icondata: CupertinoIcons.doc_checkmark,
              title: "Transaction",
              onPressed: () {},
            ),
            CustomDrawerButton(
              icondata: Icons.settings,
              title: "Customize",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StoreDetailPage(),
                  ),
                );
              },
            ),
            CustomDrawerButton(
              icondata: CupertinoIcons.add,
              title: "Supply Details",
              onPressed: () {},
            ),
            CustomDrawerButton(
              icondata: Icons.logout,
              title: "Logout",
              onPressed: () {},
            ).pOnly(top: 70, bottom: 70),
          ],
        ).pOnly(left: 20),
      ),
    );
  }
}
