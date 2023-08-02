import 'package:easyshop_app/src/features/shopingcart/views/widgets/CartList.dart';
import 'package:easyshop_app/src/features/storepickup/views/widget/PickUpForm.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    super.key,
    required this.discountPercentage,
    required this.size,
  });

  final double discountPercentage;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder<double>(
          valueListenable: ShoppingCart.totalPriceNotifier,
          builder: (context, totalPrice, _) {
            double discount = totalPrice * (discountPercentage / 100);
            double totalAfterDiscount = totalPrice - discount;
            return Column(
              children: [
                Container(
                  width: size.width * 0.9,
                  height: 400,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Order Summary",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ).pOnly(bottom: 3),
                      const Text(
                        "Store Pickup",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ).pOnly(bottom: 30),
                      const Text(
                        "PRICE DETAILS",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ).pOnly(bottom: 20),
                      Container(
                        height: 260,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ("Item Subtotal")
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make(),
                                ('₹${totalPrice.toStringAsFixed(2)}')
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ("Store Pickup")
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make(),
                                ('FREE').text.color(Colors.black).xl.make()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ("Product Discount")
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make(),
                                (' - ₹${discount.toStringAsFixed(2)}')
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make()
                              ],
                            ),
                            Column(
                              children: [
                                const Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ).pOnly(bottom: 20, top: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ("Total Amount")
                                        .text
                                        .semiBold
                                        .color(Colors.black)
                                        .xl
                                        .make(),
                                    (' ₹${totalAfterDiscount.toStringAsFixed(2)}')
                                        .text
                                        .color(Colors.black)
                                        .xl
                                        .bold
                                        .make()
                                  ],
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ).pOnly(bottom: 10, top: 20),
                              ],
                            ),
                            (' You will save ₹${discount.toStringAsFixed(2)} on this order')
                                .text
                                .xl
                                .color(egreentext)
                                .make()
                          ],
                        ),
                      ),
                    ],
                  ).p8(),
                ),
                PickUpForm(
                  totalAfterDiscount: totalAfterDiscount,
                  size: size,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
