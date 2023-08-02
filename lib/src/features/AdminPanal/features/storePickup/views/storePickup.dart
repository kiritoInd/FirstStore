import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/views/StoreDetails.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storePickup/views/widgets/PickUpCard2.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storePickup/views/widgets/PickUpcard1.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class StorePickUpPage extends ConsumerWidget {
  const StorePickUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size; //this size provides

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 340,
            child: ("Select the type of services We offer.")
                .text
                .size(24)
                .align(TextAlign.left)
                .bold
                .make(),
          ).pOnly(right: 50),
          const SizedBox(height: 10),
          ("Select your preferred mode of service(s) for your business.")
              .text
              .color(Colors.black54)
              .size(16)
              .bold
              .make()
              .pOnly(bottom: 10),
          const SizedBox(height: 30),
          const PickupCard1(
            text1: "Store Pickup",
            text2: "Customer will pick items from Store",
            borderColor: Colors.black38,
          ),
          const SizedBox(height: 5),
          const PickupCard2(
            text1: "Home Delivery",
            text2: "The store will be responsible for delivery items.",
            borderColor: Colors.black38,
          ),
          const SizedBox(height: 120),
          const Divider(
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "CANCEL",
                  buttonColor: Colors.white,
                  textColor: ebluetext2,
                  textsize: 16,
                ),
              ),
              Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  buttonText: "CONFIRM",
                  buttonColor: ebluetext2,
                  textColor: Colors.white,
                  textsize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ).pOnly(
        left: 15,
        right: 15,
      ),
    );
  }
}
