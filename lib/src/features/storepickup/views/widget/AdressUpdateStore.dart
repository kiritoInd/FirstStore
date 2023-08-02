import 'package:easyshop_app/src/features/address/provider/adressProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class AddressUpdateStorePickUp extends ConsumerWidget {
  final double size;

  AddressUpdateStorePickUp({this.size = 17});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final combinedAddress = ref.watch(finalAddressProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
              width: 280,
              child:
                  combinedAddress.text.size(size).color(Colors.black).make()),
        ),
      ],
    );
  }
}
