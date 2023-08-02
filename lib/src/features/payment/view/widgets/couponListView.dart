import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:easyshop_app/src/res/lists.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CouponListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: couponsList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Do something when a coupon is tapped
            // For example, you can apply the coupon code to a purchase.
            print("Coupon ${couponsList[index].code} tapped!");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 370,
                height: 80,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 248, 234),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black38, width: 0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade100,
                              child: Image.asset(
                                ImageAssets.coupon,
                                width: 40,
                                height: 20,
                              ),
                            ),
                            (" ${couponsList[index].code}").text.xl.bold.make(),
                          ],
                        ),
                        ("Free Delivery on orders above 50")
                            .text
                            .make()
                            .pOnly(left: 10, top: 5)
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: ("Apply").text.bold.color(lightgreen).xl.make())
                  ],
                ).p4(),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "User code FRDLNEW and get free delivery on orders above 50 on your first 5 orderson instamatic.",
                  style: TextStyle(fontSize: 13),
                ),
              ).pOnly(top: 10, bottom: 0, left: 5),
              SizedBox(
                width: 70,
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add,
                        color: lightgreen,
                        size: 18,
                      ),
                      ("More").text.bold.color(lightgreen).make()
                    ],
                  ).pOnly(bottom: 20),
                ),
              )
            ],
          ),
        );
      },
    ).p12();
  }
}
