import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../res/lists.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
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
            itemCount: slidersList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Call the corresponding callback function based on the index
                  homebannerImageCallback[index].call(context);
                },
                child: Container(
                  child: Image.asset(
                    slidersList[index],
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
            children: List.generate(slidersList.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: index == currentIndex
                    ? SizedBox(
                        width: 20,
                        height: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.grey[300],
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                ELightGreen),
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
