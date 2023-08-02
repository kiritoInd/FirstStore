import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../res/lists.dart';

class BottomBannerSlider extends StatefulWidget {
  const BottomBannerSlider({Key? key}) : super(key: key);

  @override
  _BottomBannerSliderState createState() => _BottomBannerSliderState();
}

class _BottomBannerSliderState extends State<BottomBannerSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          width: size.width,
          child: VxSwiper.builder(
            aspectRatio: 16 / 9,
            autoPlay: true,
            height: 170,
            enlargeCenterPage: true,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: slidersList2.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Call the corresponding callback function based on the index
                  imageCallbacks[index]?.call(context);
                },
                child: Container(
                  child: Image.asset(
                    slidersList2[index],
                    fit: BoxFit.fitWidth,
                  )
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(const EdgeInsets.symmetric(horizontal: 8))
                      .make(),
                ),
              );
            },
          ),
        ),
        // Progress indicator
        SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(slidersList2.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: index == currentIndex
                    ? Container(
                        width: 20,
                        height: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.grey[300],
                            valueColor:
                                AlwaysStoppedAnimation<Color>(ELightGreen),
                            value: 1.0,
                          ),
                        ),
                      )
                    : Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.grey), // Add grey border to circles
                        ),
                      ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

List<Function(BuildContext)> imageCallbacks = [
  (context) {
    print('Clicked the first image');
  },
  (context) {
    // Action for the second image
    print('Clicked the second image');
  },
  (context) {
    // Action for the third image
    print('Clicked the third image');
  },
  (context) {
    // Action for the third image
    print('Clicked the fouth image');
  },
  // Add more functions for additional images if needed
];
