import 'package:easyshop_app/src/features/address/views/AddressPage.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/payment/view/ApplyCoupon.dart';
import 'package:easyshop_app/src/features/payment/view/paymentMethods.dart';
import 'package:easyshop_app/src/features/payment/view/widgets/Confirmation.dart';
import 'package:easyshop_app/src/features/address/views/adressUpdate.dart';
import 'package:easyshop_app/src/features/storepickup/views/GettingOrder.dart';
import 'package:easyshop_app/src/features/storepickup/views/widget/AdressUpdateStore.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../home/views/widgets/customAppBarWidget.dart';

class Payment extends StatefulWidget {
  final double totalAfterDiscount;
  final double gst;
  final double deliveryCharges;

  const Payment({
    Key? key,
    required this.totalAfterDiscount,
    required this.gst,
    required this.deliveryCharges,
  }) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String selectedPaymentMethod = 'Cash on Delivery'; // Default payment method

  @override
  Widget build(BuildContext context) {
    double totalAmount =
        widget.totalAfterDiscount + widget.gst + widget.deliveryCharges;

    return Scaffold(
      appBar: CustomAppBarWidget(
        BottomStackcolor: Colors.white,
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 210,
          height: 24,
          child: ("Address").text.xl2.bold.color(Colors.black).make(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: EstartBackgroundColor),
            ),
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddressPage()),
                );
              },
              buttonText: "Add address",
              textColor: EstartBackgroundColor,
              buttonColor: Colors.white,
            ),
          ).pOnly(top: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ("GST").text.color(Colors.black).xl.make(),
              (' ₹ ${widget.gst.toStringAsFixed(2)}')
                  .text
                  .color(Colors.black)
                  .xl
                  .make()
                  .pOnly(top: 20),
            ],
          ).pOnly(top: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ("Delivery Charges").text.color(Colors.black).xl.make(),
              (' ₹ ${widget.deliveryCharges.toStringAsFixed(2)}')
                  .text
                  .color(Colors.black)
                  .xl
                  .make()
                  .pOnly(top: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ("Total Amount").text.bold.color(Colors.black).xl.make(),
              (' ₹ ${totalAmount.toStringAsFixed(2)}')
                  .text
                  .bold
                  .color(Colors.black)
                  .xl
                  .make()
                  .pOnly(top: 20),
            ],
          ),
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: EstartBackgroundColor),
            ),
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CouponPage(),
                  ),
                );
              },
              buttonText: "Apply Coupon",
              textColor: EstartBackgroundColor,
              buttonColor: Colors.white,
            ),
          ).pOnly(top: 10),
          AddressUpdate().pOnly(top: 30),
          const Divider(thickness: 2).pOnly(top: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Pick Up from Store")
                      .text
                      .color(Colors.black)
                      .caption(context)
                      .make(),
                  AddressUpdateStorePickUp(
                    size: 10,
                  ).pOnly(top: 3),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GettingOrders(),
                      ));
                },
                icon: const Icon(Icons.arrow_right),
              )
            ],
          ).pOnly(top: 10),
          const Divider(thickness: 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("PAY USING ")
                      .text
                      .color(Colors.black)
                      .caption(context)
                      .make(),
                  ("Cash on delivry")
                      .text
                      .color(Colors.black)
                      .caption(context)
                      .make(),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PaymentMethodsCards(total: totalAmount),
                      ));
                },
                icon: const Icon(Icons.arrow_right),
              )
            ],
          ).pOnly(top: 10),
          const Divider(thickness: 2),
          Center(
            child: SizedBox(
              width: 300,
              height: 40,
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderConfirm(),
                    ),
                  );
                },
                buttonText: "Pay Now",
                textColor: Colors.white,
                buttonColor: EstartBackgroundColor,
              ),
            ).pOnly(top: 40),
          ),
        ],
      ).p16(),
    );
  }
}
