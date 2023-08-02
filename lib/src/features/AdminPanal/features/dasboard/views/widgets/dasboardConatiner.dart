import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DashBoardContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Widget img1;
  final Widget icon;
  final Color grad1;
  final Color grad2;
  final Color text1Color;
  final Color text2Color;

  const DashBoardContainer({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.img1,
    required this.icon,
    required this.grad1,
    required this.grad2,
    this.text1Color = Colors.white,
    this.text2Color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [grad1, grad2],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          img1,
          SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                (text1).text.size(21).color(text1Color).bold.make(),
                (text2).text.size(13).color(text2Color).bold.make(),
              ],
            ),
          ),
          SizedBox(
            height: 54,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                icon,
                (text3).text.size(11).color(Colors.blue).bold.make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
