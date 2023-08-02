import 'package:easyshop_app/src/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatagoryProductSlider extends StatelessWidget {
  final double? width;
  final double? height;
  final double? viewport;
  final double? fontSize;
  final List<String> categoryList;
  final List<String> categoryTextList;
  final List<Function(BuildContext)> imageCallbacks;

  const CatagoryProductSlider({
    Key? key,
    this.width,
    this.height,
    this.viewport,
    this.fontSize,
    required this.categoryList,
    required this.categoryTextList,
    required this.imageCallbacks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Use specified width if provided, otherwise use full screen width
      child: VxSwiper.builder(
        aspectRatio: 16 / 9,
        height: height ??
            120, // Use specified height if provided, otherwise use default height of 100
        viewportFraction: viewport ?? 0.29,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Call the corresponding callback function based on the index
                  imageCallbacks[index]?.call(context);
                },
                child: SizedBox(
                  width: width ?? 90,
                  child: Image.asset(
                    categoryList[index],
                    fit: BoxFit.fitWidth,
                  ),
                )
                    .box
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 1))
                    .make(),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 90,
                child: Text(
                  categoryTextList[index],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: fontSize ??
                        14, // Use specified font size if provided, otherwise use default font size of 12
                  ),
                ),
              ),
              const SizedBox(
                width: 90,
                child: Text(
                  descProduct,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
