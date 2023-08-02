import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/payment/view/paymentMethods.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PickUpForm extends StatelessWidget {
  final double totalAfterDiscount;

  const PickUpForm(
      {super.key, required this.totalAfterDiscount, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            ("Contact Information"),
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
          MyForm(totalAfterDiscount: totalAfterDiscount),
        ],
      ).pOnly(bottom: 20, top: 20),
    );
  }
}

class MyForm extends StatefulWidget {
  final double totalAfterDiscount;

  const MyForm({super.key, required this.totalAfterDiscount});
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool subscribeToTextUpdates = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ("Email Address").text.bold.size(14).make().pOnly(bottom: 9),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(5.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ("Phone Number").text.bold.size(14).make().pOnly(bottom: 9),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(5.0),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Want to receive text updates?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                        height: 24,
                        child: Transform.scale(
                          scale: 0.7,
                          child: Checkbox(
                            value: subscribeToTextUpdates,
                            onChanged: (value) {
                              setState(() {
                                subscribeToTextUpdates = value!;
                              });
                            },
                          ).pOnly(right: 4),
                        ),
                      ),
                      const Text(
                        'Text me updates about all my orders, services and appointments',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ).pOnly(left: 5),
                    ],
                  ),
                ],
              ).pOnly(left: 15),
            ),
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: ebluetext,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PaymentMethodsCards(total: widget.totalAfterDiscount),
                    ),
                  );
                },
                buttonText: "Continue to Payment  Information",
                buttonColor: ebluetext,
                textColor: Colors.white,
                textsize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
