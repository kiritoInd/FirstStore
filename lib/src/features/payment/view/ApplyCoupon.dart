import 'package:easyshop_app/src/features/payment/view/widgets/CouponForm.dart';
import 'package:easyshop_app/src/features/payment/view/widgets/couponListView.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../home/views/widgets/customAppBarWidget.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: CustomAppBarWidget(
          BottomStackcolor: Colors.white,
          title: 'Shop Easy',
          rightWidget: SizedBox(
            width: 290,
            height: 24,
            child: ("Apply Coupon")
                .text
                .xl
                .bold
                .color(lightgreen)
                .make()
                .pOnly(top: 3),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 45,
                  child: CouponForm(),
                ).pOnly(top: 10),
                SizedBox(
                  width: size.width,
                  child: ("Available Coupons").text.lg.bold.make(),
                ).pOnly(left: 25, top: 20),
                Container(
                        height: 560, width: size.width, child: CouponListView())
                    .pOnly(left: 9, right: 9, bottom: 10),
              ],
            ),
          ),
        ));
  }
}
