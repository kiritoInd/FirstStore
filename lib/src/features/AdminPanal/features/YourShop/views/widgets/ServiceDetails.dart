import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/widgets/ServiceCard.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storePickup/repos/PickUpProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../storePickup/views/storePickup.dart';

class ServieDetails extends ConsumerWidget {
  const ServieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked1 = ref.watch(checkboxStateProvider1);
    final isChecked2 = ref.watch(checkboxStateProvider2);
    final showNoServiceAdded = !isChecked1 && !isChecked2;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ("Services").text.size(18).bold.make(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StorePickUpPage(),
                  ),
                );
              },
              child: Row(
                children: [
                  ("Edit").text.size(14).color(Colors.blue).make(),
                  const Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
        // Conditionally display the container based on the checkbox state
        if (isChecked1)
          const ServiceCard(
            serviceType: "Store Pickup",
            iconData: Icons.local_shipping_outlined,
          ),

        // Show container or "No Service Added" text based on isChecked2
        if (isChecked2)
          const ServiceCard(
            serviceType: "Home Delivery",
            iconData: Icons.delivery_dining,
          ),
        // Show "No Service Added" message when both checkboxes are not selected
        if (showNoServiceAdded)
          Column(
            children: [
              ("No Service Added").text.size(18).bold.make().p2(),
              ("Please select atleast one service").text.size(14).make().p2(),
            ],
          ),
      ],
    ).pOnly(left: 10, right: 10, bottom: 10);
  }
}
