import 'package:easyshop_app/src/features/AdminPanal/features/CreateOffer/view/CreateOfferPage.dart';
import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/ElevatedButtonIcon.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateOffer extends StatelessWidget {
  const CreateOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      height: 230,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 350,
            child: Image.asset(
              ImageAssets.offerimag,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: 160,
            height: 35,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: CustomElevatedButtonIcon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateOfferPage(),
                  ),
                );
              },
              buttonText: "CREATE OFFER",
              buttonColor: Colors.white,
              textColor: Colors.blue,
              iconData: CupertinoIcons.add,
              IconColor: Colors.blue,
              textsize: 14,
              borderradius: 20,
            ),
          ),
        ],
      ).p16(),
    );
  }
}
