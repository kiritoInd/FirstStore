import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/trackYourOrder/views/TrackOrder.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../home/views/widgets/customAppBarWidget.dart';

class OrderConfirm extends StatelessWidget {
  const OrderConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provides
    return Scaffold(
      appBar: CustomAppBarWidget(
        BottomStackcolor: Colors.white,
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 210,
          height: 24,
          child: ("").text.xl2.bold.color(Colors.black).make(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            child: const Icon(
              CupertinoIcons.check_mark_circled_solid,
              color: Colors.green,
              size: 150,
            ),
          ),
          ("Order Confirmed").text.xl2.bold.make().p12(),
          ("Your  order has been confirmed will be delivered soon")
              .text
              .lg
              .align(TextAlign.center)
              .make()
              .p16(),
          ("Order Id: 10000070")
              .text
              .lg
              .bold
              .align(TextAlign.center)
              .make()
              .p12(),
          SizedBox(
            width: 300,
            height: 50,
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrackOrder(),
                  ),
                );
              },
              buttonText: "Track your order",
              buttonColor: EstartBackgroundColor,
              textColor: Colors.white,
            ),
          ).pOnly(top: 40, bottom: 90)
        ],
      ),
    );
  }
}
