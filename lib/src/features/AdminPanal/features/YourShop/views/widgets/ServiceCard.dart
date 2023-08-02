import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ServiceCard extends StatelessWidget {
  final String serviceType;
  final IconData iconData;

  const ServiceCard({
    Key? key,
    required this.serviceType,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            size: 40,
          ).pOnly(right: 20),
          SizedBox(
            height: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ("Service Type").text.size(14).bold.make(),
                serviceType.text.size(12).make(),
              ],
            ),
          ),
        ],
      ),
    ).pOnly(top: 10);
  }
}
