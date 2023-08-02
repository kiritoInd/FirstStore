import 'package:easyshop_app/src/features/trackYourOrder/views/widgets/ordertracking.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderProgressWidget extends StatelessWidget {
  const OrderProgressWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          height: 250,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: 250,
                child: OrderProgressTracker(
                  currentStep:
                      2, // Set the current step index here (starts from 0)
                  steps: const ['', '', '', ''], // Provide the steps
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Ordered And Approved")
                      .text
                      .color(Colors.black)
                      .bold
                      .lg
                      .make(),
                  ("Friday, 6th June ,2023").text.color(Colors.black).sm.make(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Packed").text.color(Colors.black).bold.lg.make(),
                  ("Friday, 7th June ,2023").text.color(Colors.black).sm.make(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Shipped").text.color(Colors.black).bold.lg.make(),
                  ("Friday, 8th June ,2023").text.color(Colors.black).sm.make(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Delivery").text.color(Colors.black).bold.lg.make(),
                  Container(
                    width: 250,
                    child:
                        ("Expected by Friday, 8th June ,2023 Shipment yet to be delivered")
                            .text
                            .color(Colors.black)
                            .sm
                            .make(),
                  ),
                ],
              ),
            ],
          ),
        ).pOnly(left: 20)
      ],
    );
  }
}
