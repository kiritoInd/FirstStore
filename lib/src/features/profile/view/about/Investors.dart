import 'package:easyshop_app/src/features/profile/view/widget/bullertext.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Investors extends StatelessWidget {
  const Investors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                    width: 500,
                    child: ("Our Investors")
                        .text
                        .bold
                        .xl
                        .align(TextAlign.center)
                        .make())
                .pOnly(top: 30, bottom: 20),
            Center(
              child: Container(
                width: 350,
                height: 150,
                child: Image.asset(
                  ImageAssets.investors,
                  fit: BoxFit.fill,
                ),
              ).pOnly(bottom: 20),
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BulletText(
                      text:
                          "Firstricoz Private Limited is a Private incorporated on 26 July 2021. It is classified as Non-govt company and is registered at Registrar of Companies, Delhi. Its authorized share capital is Rs. 100,000 and its paid up capital is Rs. 100,000. It is inolved in Other computer related activities",
                    ),
                    const SizedBox(height: 20),
                    BulletText(
                      text:
                          "Firstricoz Private Limited's Annual General Meeting (AGM) was last held on N/A and as per records from Ministry of Corporate Affairs (MCA), its balance sheet was last filed on N/A.Directors of Firstricoz Private Limited are Vikram Kumar, Rajesh Kumar and .",
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            ("Read More").text.color(Colors.black45).make(),
                            const Icon(Icons.keyboard_arrow_right,
                                color: Colors.black45),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    ).pOnly(left: 12, right: 12);
  }
}
