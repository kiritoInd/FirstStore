import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../res/lists.dart';

class CatogorySlider extends StatelessWidget {
  final double? width;
  final double? height;
  final double? viewport;
  final double? fontSize;

  const CatogorySlider(
      {Key? key, this.width, this.height, this.viewport, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Use specified width if provided, otherwise use full screen width
      child: VxSwiper.builder(
        aspectRatio: 16 / 9,
        height: height ??
            100, // Use specified height if provided, otherwise use default height of 100
        viewportFraction: viewport ?? 0.25,
        enableInfiniteScroll: true,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Call the corresponding callback function based on the index
                  catogorySliderCallback[index].call(context);
                },
                child: SizedBox(
                  width: width ?? 64,
                  child: Image.asset(
                    categoryList[index],
                    fit: BoxFit.fitWidth,
                  ),
                )
                    .box
                    .roundedSM
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 1))
                    .make(),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                categoryTextList[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize ??
                      12, // Use specified font size if provided, otherwise use default font size of 12
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
