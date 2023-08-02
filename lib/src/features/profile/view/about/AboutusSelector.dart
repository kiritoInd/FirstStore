import 'package:flutter/material.dart';
import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:easyshop_app/src/features/profile/view/widget/bullertext.dart';
import 'package:easyshop_app/src/features/profile/view/widget/clickableText.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:velocity_x/velocity_x.dart';

import 'CareerPage.dart';
import 'Investors.dart';
import 'abouutuspage.dart';
import 'culture.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final List<String> imageAssets = [
    ImageAssets.aboutus1,
    ImageAssets.aboutus2,
    ImageAssets.aboutus3,
    ImageAssets.aboutus4,
  ];

  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarHome(
        title: "",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAssets[_currentPageIndex])
                .pOnly(bottom: 10, left: 12, right: 12),
            SizedBox(
              height: 30,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 94,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: index == _currentPageIndex
                                ? Colors.red
                                : Colors
                                    .transparent, // Set red underline for selected button
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: ClickableText(
                        text: _getPageTitle(index),
                        onPressed: () => _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut),
                      ),
                    ); // Add spacing between buttons
                  },
                ).pOnly(top: 10),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index;
                    });
                  },
                  children: const [
                    AboutUsPage(),
                    Culture(),
                    Investors(),
                    Career(),
                  ],
                ),
              ),
            ),
          ],
        ).pOnly(left: 8, right: 8),
      ),
    );
  }

  String _getPageTitle(int index) {
    switch (index) {
      case 0:
        return "About us";
      case 1:
        return "Culture";
      case 2:
        return "Investors";
      case 3:
        return "Career";
      default:
        return "";
    }
  }

  Widget _buildContentWidget(String contentText) {
    return Center(
      child: SizedBox(
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BulletText(text: contentText),
          ],
        ),
      ),
    );
  }
}
