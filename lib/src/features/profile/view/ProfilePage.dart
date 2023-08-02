import 'package:easyshop_app/src/features/AdminPanal/features/dasboard/views/Dasboard.dart';
import 'package:easyshop_app/src/features/notificationPage/view/NotificationViewAllPage.dart';
import 'package:easyshop_app/src/features/profile/view/privacyPolicy/PrivacyPolicy.dart';
import 'package:easyshop_app/src/features/profile/view/returnPolicy/ReturnPolicy.dart';
import 'package:easyshop_app/src/features/profile/view/widget/ProfileTop.dart';
import 'package:easyshop_app/src/features/profile/view/widget/profilebutton.dart';
import 'package:easyshop_app/src/features/storepickup/views/GettingOrder.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../home/views/widgets/CustomAppbarHome.dart';
import 'about/AboutusSelector.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 244, 244),
      appBar: CustomAppBarHome(
        iscenterTitle: false,
        colorTitle: Colors.green,
        title: "Profile",
        backgroundColor: Color.fromARGB(255, 245, 244, 244),
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Profiletop(size: size),
              Container(
                height: size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUs(),
                          ),
                        );
                      },
                      buttonText: ("About Shop Easy"),
                    ),
                    ProfileButton(
                      onPressed: () {},
                      buttonText: ("FAQs"),
                    ),
                    ProfileButton(
                      onPressed: () {},
                      buttonText: ("My Orders"),
                    ),
                    ProfileButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReturnPolicy(),
                          ),
                        );
                      },
                      buttonText: ("Return Policy"),
                    ),
                    ProfileButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PrivacyPolicy(),
                          ),
                        );
                      },
                      buttonText: ("Privacy Policy"),
                    ),
                    ProfileButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const NotificaitonPageViewAll(),
                          ),
                        );
                      },
                      buttonText: ("Notification"),
                    ),
                    ProfileButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      },
                      buttonText: ("Admin Panel"),
                    ),
                    ProfileButton(
                      onPressed: () {},
                      buttonText: ("Logout"),
                    )
                  ],
                ).pOnly(top: 20, bottom: 5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
