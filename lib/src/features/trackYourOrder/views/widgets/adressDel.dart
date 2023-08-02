import 'package:easyshop_app/src/features/address/provider/adressProvider.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class AddressUpdateTrack extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final combinedAddress = ref.watch(finalAddressProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 260,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: ELightGreen,
                    ),
                    ("Delivery Address").text.color(Colors.black).bold.make(),
                  ],
                ),
                combinedAddress.text
                    .caption(context)
                    .color(Colors.black)
                    .make()
                    .pOnly(top: 5),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
