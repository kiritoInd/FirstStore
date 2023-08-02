import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({
    Key? key,
    required TextEditingController addressController,
    required TextEditingController floorController,
    required TextEditingController landmarkController,
    required this.size,
    required this.onSaveAddress,
    // Add the onSaveAddress callback function
  })  : _addressController = addressController,
        _floorController = floorController,
        _landmarkController = landmarkController,
        super(key: key);

  final TextEditingController _addressController;
  final TextEditingController _floorController;
  final TextEditingController _landmarkController;
  final Size size;
  final VoidCallback onSaveAddress;
  // Define the callback function

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ("Enter Complete address").text.xl.bold.make(),
        ("Save address as*").text.lg.make().pOnly(top: 20, bottom: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Home",
                  buttonColor: Colors.white,
                )),
            Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Work",
                  buttonColor: Colors.white,
                )),
            Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Hotel",
                  buttonColor: Colors.white,
                )),
            Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: "Other",
                  buttonColor: Colors.white,
                )),
          ],
        ).pOnly(top: 10),
        TextField(
          controller: _addressController,
          decoration: InputDecoration(
              labelText: 'Complete Address*',
              hoverColor: Colors.black,
              focusColor: Colors.black,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ).pOnly(bottom: 10, top: 20),
        TextField(
          controller: _floorController,
          decoration: InputDecoration(
              labelText: 'Floor (optional)',
              hoverColor: Colors.black,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ).pOnly(bottom: 10, top: 10),
        TextField(
          controller: _landmarkController,
          decoration: InputDecoration(
              labelText: 'Nearby landmark*',
              hoverColor: Colors.black,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ).pOnly(bottom: 10, top: 10),
        Container(
          width: size.width,
          height: 40,
          child: CustomElevatedButton(
            onPressed: onSaveAddress,
            buttonText: "Save Address",
            buttonColor: EstartBackgroundColor,
            textColor: Colors.white,
          ),
        ).pOnly(left: 10, right: 10, top: 20)
      ],
    ).pOnly(bottom: 50);
  }
}
