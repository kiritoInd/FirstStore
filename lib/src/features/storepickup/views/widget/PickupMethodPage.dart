import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PickMethodPage extends StatelessWidget {
  const PickMethodPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            ("Pickup Method"),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ).pOnly(top: 10),
          const Text(
            ("In-Store"),
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            ("Normal Hours: 11 a.m. - 8 p.m."),
            style: TextStyle(
              fontSize: 17,
            ),
          ).pOnly(bottom: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(CupertinoIcons.exclamationmark_circle),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ("Regarding your pickup"),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ).pOnly(bottom: 10),
                  const SizedBox(
                    width: 305,
                    child: Text(
                      ("We'll notify you when your order is ready and it can be picked up anytime during store hours until Friday, Jul 28."),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ).pOnly(left: 4),
            ],
          )
        ],
      ).pOnly(left: 23, right: 23, top: 20, bottom: 20),
    );
  }
}
