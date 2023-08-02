import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ButtonSectionMessage extends StatelessWidget {
  const ButtonSectionMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 182,
                height: 37,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Send Message",
                  buttonColor: Colors.white,
                  textColor: Colors.blue,
                  textsize: 14,
                ),
              ),
              Container(
                width: 125,
                height: 37,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Send Gift",
                  buttonColor: Colors.white,
                  textColor: Colors.blue,
                  textsize: 14,
                ),
              ),
            ],
          ).pOnly(left: 20, right: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 167,
                height: 37,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Send Greetings",
                  buttonColor: Colors.white,
                  textColor: Colors.blue,
                  textsize: 14,
                ),
              ),
              Container(
                width: 167,
                height: 37,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Event Invitations",
                  buttonColor: Colors.white,
                  textsize: 14,
                  textColor: Colors.blue,
                ),
              ),
            ],
          ).pOnly(
            left: 10,
            right: 10,
          ),
        ],
      ),
    );
  }
}
