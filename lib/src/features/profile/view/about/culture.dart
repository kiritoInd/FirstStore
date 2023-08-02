import 'package:easyshop_app/src/features/profile/view/widget/testimonialCard.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Culture extends StatelessWidget {
  const Culture({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                      width: 500,
                      child: ("Our Culture")
                          .text
                          .bold
                          .xl
                          .align(TextAlign.center)
                          .make())
                  .pOnly(top: 30),
              SizedBox(
                width: 700,
                height: size.height * 2,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ("Our Values")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      ("At Shop Easy, we uphold the values of integrity, collaboration, and continuous improvement in everything we do.")
                          .text
                          .lg
                          .size(12)
                          .make()
                          .pOnly(bottom: 10),
                      ("Integrity:")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      ("At Shop Easy, we believe in conducting ourselves with the utmost integrity. We are committed to maintaining high ethical standards in our interactions with customers, suppliers, and each other. We value honesty, transparency, and trustworthiness in all aspects of our business.")
                          .text
                          .lg
                          .size(12)
                          .make()
                          .pOnly(bottom: 10),
                      ("Collaboration")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      ("Collaboration is at the heart of our organization. We foster a collaborative work environment where everyone's ideas and contributions are valued. We encourage teamwork and open communication, recognizing that diverse perspectives lead to better outcomes. We believe that by working together, we can achieve greater success.")
                          .text
                          .lg
                          .size(12)
                          .make()
                          .pOnly(bottom: 25),
                      Center(
                        child: Container(
                          width: 370,
                          height: 300,
                          child: Image.asset(
                            ImageAssets.culture,
                            fit: BoxFit.fitHeight,
                          ).pOnly(bottom: 15),
                        ),
                      ),
                      ("Employee Testimonials:")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      VxSwiper(
                        height: 345,
                        // enlargeCenterPage: true,
                        items: [
                          TestimonialCard(
                            imagePath: ImageAssets.profile2,
                            quote:
                                'Working at Shop Easy has been an amazing  experience. The company   truly values teamwork, innovation, and growth.',
                            designation: 'Senior Developer',
                            name: 'John Doe',
                            starRating: 4,
                          ),
                          // Add more TestimonialCard widgets here if you have more testimonials
                        ],
                        onPageChanged: (index) {
                          // Optional callback to handle page changes (if needed)
                        },
                      ).pOnly(top: 20, bottom: 20),
                      ("Work-Life Balance")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      ("We believe in maintaining a healthy work-life balance and offer flexible schedules and wellness programs to ensure our employees thrive both personally and professionally.")
                          .text
                          .lg
                          .size(12)
                          .make()
                          .pOnly(bottom: 10),
                      ("Diversity and Inclusion")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      ("We foster an inclusive environment where diversity is celebrated, and all individuals are valued for their unique perspectives and contributions.")
                          .text
                          .lg
                          .size(12)
                          .make()
                          .pOnly(bottom: 10),
                      ("Career Development")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      ("At Shop Easy, we invest in our employees' growth and offer training programs, mentorship opportunities, and clear career paths to help them achieve their professional goals.")
                          .text
                          .lg
                          .size(12)
                          .make()
                          .pOnly(bottom: 10),
                      ("Social Responsibility")
                          .text
                          .lg
                          .bold
                          .make()
                          .pOnly(top: 10, bottom: 10),
                      ("We are dedicated to giving back to our community and regularly participate in volunteering events and support local charities.")
                          .text
                          .lg
                          .size(12)
                          .make()
                          .pOnly(bottom: 10),
                    ],
                  ),
                ),
              )
            ],
          ).pOnly(left: 12, right: 12),
        ),
      ),
    );
  }
}
