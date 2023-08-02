import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
              Image.asset(ImageAssets.aboutus5).pOnly(bottom: 10),
              Container(
                width: 500,
                child: ("Privacy Policy")
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
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16, // Adjust the font size as needed
                        color: Colors.black, // Set the text color
                      ),
                      children: [
                        TextSpan(
                          text: 'Purpose: ',
                          style: TextStyle(
                              fontWeight: FontWeight
                                  .bold), // Make the "Purpose" text bold
                        ),
                        TextSpan(
                          text:
                              '"This Privacy Policy explains how we collect, use, and protect your personal information when you visit our website."',
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        ),
                      ],
                    ),
                  ).pOnly(bottom: 30),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16, // Adjust the font size as needed
                        color: Colors.black, // Set the text color
                      ),
                      children: [
                        TextSpan(
                          text: 'Importance of privacy: ',
                          style: TextStyle(
                              fontWeight: FontWeight
                                  .bold), // Make the "Purpose" text bold
                        ),
                        TextSpan(
                          text:
                              '"We value your privacy and are committed to safeguarding your personal information."',
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        ),
                      ],
                    ),
                  ).pOnly(bottom: 30),
                  ("Types of Information Collected:")
                      .text
                      .lg
                      .bold
                      .make()
                      .pOnly(bottom: 10),
                  ("We may collect personal information, such as your name, email address, and shipping address when you create an account or place an order on our website. Additionally, we may automatically collect certain information through cookies and other tracking technologies to enhance your browsing experience.")
                      .text
                      .make()
                      .pOnly(bottom: 30),
                  ("Use of Information:").text.lg.bold.make().pOnly(bottom: 10),
                  ("We use the information you provide to process your orders, communicate with you regarding your purchases, and provide customer support. We may also use your information to personalize your shopping experience and send you promotional emails about our products and offers.")
                      .text
                      .make()
                      .pOnly(bottom: 30),
                  ("Third-Party Disclosure:")
                      .text
                      .lg
                      .bold
                      .make()
                      .pOnly(bottom: 10),
                  ("We may share your information with trusted third-party service providers, such as payment processors and shipping companies, to facilitate order processing and delivery. However, we do not sell or rent your personal information to third parties for marketing purposes.")
                      .text
                      .make()
                      .pOnly(bottom: 30),
                  ("Cookie Policy:").text.lg.bold.make().pOnly(bottom: 10),
                  ("We use cookies to enhance your browsing experience and analyze website traffic. These cookies may be essential for certain site functionalities or help us understand user preferences. By using our website, you consent to the use of cookies. You can manage your cookie preferences through your browser settings.")
                      .text
                      .make()
                      .pOnly(bottom: 30),
                  ("User Rights:").text.lg.bold.make().pOnly(bottom: 10),
                  ("You have the right to access, update, and delete your personal information stored in our systems. If you wish to exercise any of these rights or have any questions regarding your privacy, please contact our Privacy Officer using the information provided below.")
                      .text
                      .make()
                      .pOnly(bottom: 30),
                  ("Contact Information:")
                      .text
                      .lg
                      .bold
                      .make()
                      .pOnly(bottom: 10),
                  ("We reserve the right to update this Privacy Policy from time to time. We will notify you of any material changes by posting the updated policy on our website. We encourage you to review this policy periodically to stay informed about how we protect your information.")
                      .text
                      .make()
                      .pOnly(bottom: 30),
                ],
              ),
            ],
          ).pOnly(left: 20, right: 20),
        ),
      ),
    );
  }
}
