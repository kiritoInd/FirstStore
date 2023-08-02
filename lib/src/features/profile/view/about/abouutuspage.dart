import 'package:easyshop_app/src/features/profile/view/widget/bullertext.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              child: ("About US")
                  .text
                  .bold
                  .xl
                  .align(TextAlign.center)
                  .make()
                  .pOnly(bottom: 10, top: 10),
            ).pOnly(top: 20, bottom: 10),
            Center(
              child: SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BulletText(
                      text:
                          "At Shop Easy, we understand the importance of convenience and quality when it comes to grocery shopping, as well as finding the perfect furniture and electronics for your home. Our mission is to provide you with a seamless online shopping experience, offering a wide selection of high-quality products at competitive prices.",
                    ),
                    const SizedBox(height: 20),
                    BulletText(
                      text:
                          "With Shop Easy, you can browse through a diverse range of fresh produce, pantry essentials, stylish furniture, and cutting-edge electronics. We source our products from trusted suppliers to ensure that you receive only the best. Whether you're stocking up on groceries or looking for the latest tech gadgets, we've got you covered.",
                    ),
                    const SizedBox(height: 20),
                    BulletText(
                      text:
                          "With a focus on quality, affordability, and convenience, we strive to make your shopping experience easy and enjoyable. Our team is committed to providing excellent customer service and ensuring your satisfaction with every purchase.",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ).pOnly(left: 12, right: 12),
    );
  }
}
