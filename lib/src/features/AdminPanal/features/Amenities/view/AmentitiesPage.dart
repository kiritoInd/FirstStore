import 'package:easyshop_app/src/features/AdminPanal/features/Amenities/controller/AmenitiesProvider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/Amenities/view/widget/AmentitesCardCheck.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class AmenitiesPage extends ConsumerWidget {
  const AmenitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
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
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(
              CupertinoIcons.question_circle,
              size: 27,
              color: EstartBackgroundColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 1.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 340,
                child: ("Amenities and Features")
                    .text
                    .size(24)
                    .align(TextAlign.left)
                    .bold
                    .make(),
              ).pOnly(bottom: 0, left: 15, right: 15),
              ("Select Amenities and special features we offer.")
                  .text
                  .color(Colors.black54)
                  .size(14)
                  .bold
                  .align(TextAlign.left)
                  .make()
                  .pOnly(bottom: 30, left: 15, right: 15),
              AmentitesCardCheck(
                checkboxProvider: amencheckboxStateProvider1,
                iconData: Icons.local_shipping_outlined,
                text: "Vehicle Parking",
                text2:
                    "Convenient and ample vehicle parking is available at our store, ensuring a hassle-free shopping experience for our valued customers",
              ),
              AmentitesCardCheck(
                checkboxProvider: amencheckboxStateProvider2,
                iconData: Icons.wifi,
                text: "Wi-Fi Access",
                text2:
                    "We provide complimentary Wi-Fi access throughout our store, allowing customers to stay connected while they shop and conveniently browse online resources or check product information.",
              ),
              AmentitesCardCheck(
                checkboxProvider: amencheckboxStateProvider3,
                iconData: Icons.person,
                text: "Customer Assistance",
                text2:
                    "Our friendly and knowledgeable staff members are always ready to provide personalized customer assistance, answering queries offering product recommendations.",
              ),
              AmentitesCardCheck(
                checkboxProvider: amencheckboxStateProvider4,
                iconData: Icons.person_4_outlined,
                text: "Customer Feedback",
                text2:
                    "Our friendly and knowledgeable staff members are always ready to provide personalized customer assistance, answering queries offering product recommendations.",
              ),
              const Divider(
                thickness: 2,
              ).pOnly(top: 50),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {},
                      buttonText: "CANCEL",
                      buttonColor: Colors.white,
                      textColor: EstartBackgroundColor,
                      textsize: 16,
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      buttonText: "SAVE",
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      buttonRadius: 20,
                      textsize: 16,
                    ),
                  ),
                ],
              ).pOnly(
                left: 15,
                right: 15,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
