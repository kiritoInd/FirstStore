import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DistTimeBar extends StatelessWidget {
  const DistTimeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 330,
      height: 65,
      decoration: BoxDecoration(
        color: ELightGreenhome,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ("Road Distance").text.color(Colors.white).bold.make(),
                ("102.km").text.color(Colors.white).bold.make(),
              ],
            ),
            const VerticalDivider(
              color: Colors.white,
              width: 5,
            ).pOnly(top: 2, bottom: 2),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ("Estimated Time").text.color(Colors.white).bold.make(),
                ("1 Hour").text.color(Colors.white).bold.make(),
              ],
            ),
          ]),
    );
  }
}
