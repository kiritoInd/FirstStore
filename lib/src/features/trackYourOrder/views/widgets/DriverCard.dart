import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/ElevatedButtonIcon.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ("Driver")
            .text
            .bold
            .color(Colors.grey)
            .make()
            .pOnly(left: 5, bottom: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey, // Replace with your desired color
                    ),
                    child: Image.asset(
                      ImageAssets.driver,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ("Jhon sheru").text.make(),
                        ("Bike No.453-230").text.gray400.make().pOnly(top: 10)
                      ],
                    ).pOnly(left: 30, bottom: 5),
                  ),
                ],
              ),
              Container(
                width: 270,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 30,
                      child: CustomElevatedButtonIcon(
                        buttonText: "Call Driver",
                        iconData: Icons.phone_outlined,
                        onPressed: () {},
                        buttonColor: ELightGreenhome,
                        textColor: Colors.white,
                        textsize: 12,
                      ),
                    ).pOnly(right: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      width: 120,
                      height: 30,
                      child: CustomElevatedButtonIcon(
                        buttonText: "Message",
                        iconData: Icons.message_outlined,
                        onPressed: () {},
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        textsize: 12,
                        IconColor: Colors.black,
                      ),
                    )
                  ],
                ).pOnly(top: 10),
              ).pOnly(right: 76),
            ],
          ).pOnly(left: 15, top: 10, bottom: 10),
        )
      ],
    );
  }
}
