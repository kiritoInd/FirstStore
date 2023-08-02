import 'package:easyshop_app/src/features/address/views/AddressPage.dart';
import 'package:easyshop_app/src/features/storepickup/views/widget/AdressUpdateStore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PickInfoPage extends StatelessWidget {
  const PickInfoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            ("Pickup Location"),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ).pOnly(top: 10),
          const Text(
            ("Area"),
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          AddressUpdateStorePickUp(),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddressPage()),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // Removes the default padding
            ),
            child: ("Change pickup location").text.size(17).make(),
          ),
          const Text(
            ("Pickup Person"),
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            ("You (Name on Billing Address)"),
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // Removes the default padding
            ),
            child: ("Add a new pickup person").text.size(17).make(),
          ),
          const Text(
            ("Remember to bring your photo ID when you pick up your order."),
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ).pOnly(left: 23, right: 23, top: 20),
    );
  }
}
