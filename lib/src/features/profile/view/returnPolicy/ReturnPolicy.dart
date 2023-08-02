import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';

import 'package:easyshop_app/src/features/profile/view/widget/bullertext.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ReturnPolicy extends StatelessWidget {
  const ReturnPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarHome(
        title: "",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(ImageAssets.aboutus6).pOnly(bottom: 10),
              Container(
                width: 500,
                child: ("Cancellation & Return Policy")
                    .text
                    .bold
                    .xl
                    .align(TextAlign.center)
                    .make()
                    .pOnly(bottom: 20),
              ).pOnly(top: 20, bottom: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Introduction:").text.lg.bold.make().pOnly(bottom: 10),
                  ("At Shop Easy, we want to ensure your complete satisfaction with your purchases. If, for any reason, you are not satisfied with your order, you may cancel or return the products according to the following policy:")
                      .text
                      .make()
                      .pOnly(bottom: 30),
                  ("1. Cancellation Policy:")
                      .text
                      .lg
                      .bold
                      .make()
                      .pOnly(bottom: 10),
                  Column(
                    children: [
                      BulletText(
                              text:
                                  "If you wish to cancel your order, please do so within 24 hours of placing the order by contacting our customer support team.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "Cancellations made after 24 hours may not be possible if the order has already been processed or shipped.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "We reserve the right to cancel orders in case of unavailability of products or any other unforeseen circumstances. In such cases, a full refund will be provided.")
                          .pOnly(top: 20),
                    ],
                  ).pOnly(bottom: 30),
                  ("2. Return Policy:").text.lg.bold.make().pOnly(bottom: 10),
                  Column(
                    children: [
                      BulletText(
                              text:
                                  "You may return eligible products within 14 days of the delivery date.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "Products must be unused, in their original packaging, and in resalable condition to be eligible for a return.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "Certain products, such as perishable items, intimate goods, and customized products, may not be eligible for return due to hygiene or other reasons. Please check the product description for specific return eligibility.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "To initiate a return, please contact our customer support team and provide the order details and reason for return.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "Return shipping costs may be applicable and will be the responsibility of the customer, unless the return is due to a mistake on our part or a defective product.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "Once the returned products are received and inspected, a refund will be processed within [X] business days. The refund will be issued in the original form of payment.")
                          .pOnly(top: 20),
                    ],
                  ).pOnly(bottom: 30),
                  Center(
                    child: Container(
                      // width: 380,
                      // height: 150,
                      child: Image.asset(
                        ImageAssets.returnPolicy,
                        fit: BoxFit.fill,
                      ),
                    ).pOnly(bottom: 20),
                  ),
                  ("3. Exchange Policy:").text.lg.bold.make().pOnly(bottom: 10),
                  Column(
                    children: [
                      BulletText(
                              text:
                                  "If you wish to exchange a product for a different size, color, or variant, please contact our customer support team.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "Exchange requests are subject to product availability.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "The customer may be responsible for any price differences or additional shipping charges associated with the exchange.")
                          .pOnly(top: 20),
                    ],
                  ).pOnly(bottom: 30),
                  ("4. Damaged or Defective Products:")
                      .text
                      .lg
                      .bold
                      .make()
                      .pOnly(bottom: 10),
                  Column(
                    children: [
                      BulletText(
                              text:
                                  "If you receive a damaged or defective product, please contact our customer support team immediately.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "Provide details of the issue, along with supporting photographs if possible, to expedite the resolution process.")
                          .pOnly(top: 20),
                      BulletText(
                              text:
                                  "We will arrange for a return or replacement of the damaged or defective product at no additional cost to you.")
                          .pOnly(top: 20),
                    ],
                  ).pOnly(bottom: 50),
                ],
              ),
            ],
          ).pOnly(left: 20, right: 20),
        ),
      ),
    );
  }
}
