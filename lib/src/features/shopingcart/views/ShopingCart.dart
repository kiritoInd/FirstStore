import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/shopingcart/views/widgets/CartList.dart';
import 'package:easyshop_app/src/features/shopingcart/views/widgets/customtitlecb.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../home/views/Home.dart';
import '../../home/views/widgets/customAppBarWidget.dart';
import '../../payment/view/payment.dart';
import 'widgets/ShoppingCartItemList.dart';

class ShoppingCartWidget extends StatefulWidget {
  final VoidCallback? onItemAdded; // Add the onItemAdded callback

  const ShoppingCartWidget({Key? key, this.onItemAdded}) : super(key: key);

  @override
  State<ShoppingCartWidget> createState() => _ShoppingCartWidgetState();
}

class _ShoppingCartWidgetState extends State<ShoppingCartWidget> {
  double discountPercentage = 10.0; // Define the discount percentage

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provides

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 0.9,
        width: size.width,
        child: Scaffold(
          appBar: CustomAppBarWidget(
            BottomStackcolor: Colors.white,
            onIconPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            title: 'Shop Easy',
            rightWidget: const SizedBox(
              width: 230,
              height: 23,
              child: CustomAppBarcd(leftPadding: 0),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: size.height * 0.53,
                width: size.width,
                child: const ShoppingCartItemList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ValueListenableBuilder<double>(
                    valueListenable: ShoppingCart.totalPriceNotifier,
                    builder: (context, totalPrice, _) {
                      double discount = totalPrice * (discountPercentage / 100);
                      double totalAfterDiscount = totalPrice - discount;
                      return SizedBox(
                        width: size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ("Sub Total")
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make(),
                                ('₹ ${totalPrice.toStringAsFixed(2)}')
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ("Discount").text.color(Colors.black).xl.make(),
                                (' ₹ ${discount.toStringAsFixed(2)}')
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make()
                                    .pOnly(top: 10)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ("Total").text.color(Colors.black).xl.make(),
                                (' ₹ ${totalAfterDiscount.toStringAsFixed(2)}')
                                    .text
                                    .color(Colors.black)
                                    .xl
                                    .make()
                                    .pOnly(top: 10)
                              ],
                            ),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: EstartBackgroundColor,
                                ),
                              ),
                              child: CustomElevatedButton(
                                  onPressed: () {
                                    double gst =
                                        10.0; // Replace with your desired GST value
                                    double deliveryCharges =
                                        5.0; // Replace with your desired delivery charges
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Payment(
                                          totalAfterDiscount:
                                              totalAfterDiscount,
                                          gst: gst,
                                          deliveryCharges: deliveryCharges,
                                        ),
                                      ),
                                    );
                                  },
                                  buttonText: "Proceed",
                                  buttonColor: Colors.white,
                                  textColor: EstartBackgroundColor),
                            ).pOnly(top: 10)
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
