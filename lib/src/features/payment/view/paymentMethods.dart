import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/payment/view/widgets/Confirmation.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../res/image_assets.dart';
import '../../home/views/widgets/customAppBarWidget.dart';

class PaymentMethodsCards extends StatefulWidget {
  final double total;

  const PaymentMethodsCards({Key? key, required this.total}) : super(key: key);

  @override
  _PaymentMethodsCardsState createState() => _PaymentMethodsCardsState();
}

class _PaymentMethodsCardsState extends State<PaymentMethodsCards> {
  String? selectedPaymentMethod;
  String? selectedSubOption;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      appBar: CustomAppBarWidget(
        BottomStackcolor: Colors.white,
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 240,
          height: 24,
          child: ("Payment Method").text.xl2.bold.color(Colors.black).make(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: size.height * 0.8,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: () {
                    setState(() {
                      if (selectedPaymentMethod == 'Upi') {
                        selectedPaymentMethod = null;
                      } else {
                        selectedPaymentMethod = 'Upi';
                      }
                    });
                  },
                  tileColor: Colors.white,
                  leading: selectedPaymentMethod == 'Upi'
                      ? Icon(Icons.keyboard_arrow_down)
                      : Icon(Icons.keyboard_arrow_right),
                  title: Row(
                    children: [
                      Image.asset(
                        ImageAssets.payment4,
                        width: 50,
                        height: 50,
                      ).pOnly(right: 20),
                      ("UPI").text.lg.bold.make(),
                    ],
                  ),
                ).pOnly(left: 10),
              ),
              if (selectedPaymentMethod == 'Upi')
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      ("Choose an option")
                          .text
                          .lg
                          .make()
                          .pOnly(right: 100, bottom: 10),
                      ListTile(
                          tileColor: Colors.white,
                          leading: Radio(
                            value: 'Phone Pe',
                            groupValue: selectedSubOption,
                            onChanged: (value) {
                              setState(() {
                                selectedSubOption = value as String?;
                              });
                            },
                          ),
                          title: Row(
                            children: [
                              Image.asset(ImageAssets.payment5).pOnly(right: 4),
                              const Text('Phone Pe'),
                            ],
                          )),
                      ListTile(
                        tileColor: Colors.white,
                        leading: Radio(
                          value: 'Your UPI ID',
                          groupValue: selectedSubOption,
                          onChanged: (value) {
                            setState(() {
                              selectedSubOption = value as String?;
                            });
                          },
                        ),
                        title: const Text('Your UPI ID'),
                      ),
                    ],
                  ).pOnly(left: 60),
                ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 20,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              ListTile(
                  leading: Radio(
                    value: 'Wallets',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value as String?;
                      });
                    },
                  ),
                  tileColor: Colors.white,
                  title: ("Wallets").text.lg.bold.make()),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 20,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              ListTile(
                leading: Radio(
                  value: 'Credit / Debit /ATM',
                  groupValue: selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      selectedPaymentMethod = value as String?;
                    });
                  },
                ),
                tileColor: Colors.white,
                title: ('Credit / Debit /ATM').text.lg.bold.make(),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 20,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              ListTile(
                leading: Radio(
                  value: 'Cash on Delivery',
                  groupValue: selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      selectedPaymentMethod = value as String?;
                    });
                  },
                ),
                tileColor: Colors.white,
                title: ('Cash on Delivery').text.lg.bold.make(),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 20,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              ListTile(
                leading: Radio(
                  value: 'Master Card',
                  groupValue: selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      selectedPaymentMethod = value as String?;
                    });
                  },
                ),
                tileColor: Colors.white,
                title: Row(
                  children: [
                    Image.asset(
                      ImageAssets.payment2,
                      width: 50,
                      height: 50,
                    ).pOnly(right: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ("Master Card").text.lg.bold.make(),
                        ("3174058845...4532 ").text.caption(context).make(),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹${widget.total.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 150,
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
                            builder: (context) => OrderConfirm(),
                          ),
                        );
                      },
                      buttonText: "Place Order",
                      textColor: Colors.white,
                      buttonColor: EstartBackgroundColor,
                    ),
                  ),
                ],
              ).pOnly(top: 40, left: 12, right: 12),
            ],
          ).p16(),
        ).pOnly(top: 10),
      ),
    );
  }
}
