import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:easyshop_app/src/features/profile/view/widget/ProfileTop.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBarHome(
        iscenterTitle: false,
        colorTitle: Colors.green,
        title: "Profile",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: Container(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Profiletop(size: size),
            const SizedBox(height: 40),
            SizedBox(
              width: size.width * 0.9,
              child: Column(
                children: [
                  Row(children: [
                    const Icon(Icons.person_2_outlined),
                    ("Name").text.lg.make().p4(),
                  ]),
                  Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: ("Ahanshi")
                        .text
                        .align(TextAlign.left)
                        .xl
                        .color(EstartBackgroundColor)
                        .bold
                        .make()
                        .p12(),
                  ).pOnly(top: 10),
                  //
                  //
                  Row(children: [
                    const Icon(Icons.phone_outlined),
                    ("Phone number").text.lg.make().p4(),
                  ]).pOnly(top: 10),
                  Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: ("+7273463729")
                        .text
                        .align(TextAlign.left)
                        .xl
                        .color(EstartBackgroundColor)
                        .bold
                        .make()
                        .p12(),
                  ).pOnly(top: 10),
                  //
                  //
                  Row(children: [
                    const Icon(Icons.email_outlined),
                    ("Email address").text.lg.make().p4(),
                  ]).pOnly(top: 10),
                  Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: ("Ahansh@gmail.com")
                        .text
                        .align(TextAlign.left)
                        .xl
                        .color(EstartBackgroundColor)
                        .bold
                        .make()
                        .p12(),
                  ).pOnly(top: 10),
                  //
                  //
                  Row(children: [
                    const Icon(CupertinoIcons.placemark),
                    ("Location").text.lg.make().p4(),
                  ]).pOnly(top: 10),
                  Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: ("United States")
                        .text
                        .align(TextAlign.left)
                        .xl
                        .color(EstartBackgroundColor)
                        .bold
                        .make()
                        .p12(),
                  ).pOnly(top: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
