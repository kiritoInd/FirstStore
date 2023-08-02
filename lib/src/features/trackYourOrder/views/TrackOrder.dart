import 'package:easyshop_app/src/features/home/views/widgets/customAppBarWidget.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/DistnTimeBar.dart';
import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/DriverCard.dart';
import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/ElevatedButtonIcon.dart';
import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/adressDel.dart';
import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/orderProgressWidget.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: CustomAppBarWidget(
          BottomStackcolor: Colors.white,
          title: 'Shop Easy',
          rightWidget: SizedBox(
            width: 230,
            height: 24,
            child: ("Order Details").text.xl.bold.make().pOnly(top: 3),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            child: Column(
              children: [
                OrderProgressWidget(size: size),
                AddressUpdateTrack().pOnly(top: 30, left: 10),
                const DistTimeBar().pOnly(top: 30, bottom: 20, right: 5),
                const DriverCard(),
                Container(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ("Order Placed").text.xl.bold.make(),
                      ("03:28 PM, 29 May, 2023").text.make(),
                      const SizedBox(height: 40),
                      ("Order Delivered").text.xl.bold.make(),
                      ("Your item has been delivered").text.make(),
                      ("03:28 PM, 5 June, 2023").text.make(),
                    ],
                  ),
                ).pOnly(top: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 110,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: CustomElevatedButtonIcon(
                        onPressed: () {},
                        buttonText: "Share",
                        iconData: Icons.share_outlined,
                        IconColor: Colors.black,
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 180,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ("Live Chat").text.xl.bold.make(),
                      ("Chat live with our friendly support team and get immediate assistance for any grocery-related queries or concerns.")
                          .text
                          .make(),
                      Container(
                        width: 150,
                        child: CustomElevatedButton(
                          onPressed: () {},
                          buttonText: "Get Help",
                          buttonColor: ELightGreenhome,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ).pOnly(top: 30),
                Container(
                  height: 180,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ("Live Chat").text.xl.bold.make(),
                      ("Chat live with our friendly support team and get immediate assistance for any grocery-related queries or concerns.")
                          .text
                          .make(),
                      SizedBox(
                        width: 180,
                        child: CustomElevatedButton(
                          onPressed: () {},
                          buttonText: "Add FeedBack",
                          buttonColor: ELightGreenhome,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ).pOnly(left: 15, top: 20, right: 15, bottom: 40),
        ));
  }
}
