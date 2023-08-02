import 'package:easyshop_app/src/features/AdminPanal/features/Amenities/view/AmentitiesPage.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Amenities extends StatelessWidget {
  const Amenities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ("What all Amenities we offer?")
                .text
                .size(16)
                .fontWeight(FontWeight.w600)
                .bold
                .make(),
            SizedBox(
              width: 220,
              child:
                  ("Adding facilities to Help the customer choose the write store for them ")
                      .text
                      .size(12)
                      .make()
                      .pOnly(bottom: 15),
            ),
            Container(
              width: 160,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AmenitiesPage(),
                    ),
                  );
                },
                buttonText: "ADD AMENITIES",
                buttonColor: Colors.white,
                isBold: false,
                textColor: Colors.blue,
                textsize: 14,
                buttonRadius: 20,
              ),
            ),
          ],
        ),
        Image.asset(
          ImageAssets.amenties,
          height: 150,
          width: 133,
        ),
      ],
    );
  }
}
