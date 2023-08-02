import 'package:easyshop_app/src/features/address/provider/adressProvider.dart';
import 'package:easyshop_app/src/features/address/views/widgets/AddressForm.dart';
import 'package:easyshop_app/src/features/address/views/widgets/getCurrentLocation.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:riverpod_context/riverpod_context.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../home/views/widgets/customAppBarWidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _floorController = TextEditingController();
  final TextEditingController _landmarkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBarWidget(
        BottomStackcolor: Colors.white,
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 290,
          height: 24,
          child: ("Choose delivery location").text.xl.bold.make().pOnly(top: 3),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 280,
              child: Stack(
                children: [
                  Image.asset(
                    ImageAssets.map,
                    height: 300,
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Align(
                          alignment: Alignment.bottomRight,
                          child: GetCurrentLoacation(
                              addressController: _addressController))
                      .pOnly(right: 10),
                ],
              ),
            ),
            AddressForm(
              addressController: _addressController,
              floorController: _floorController,
              landmarkController: _landmarkController,
              size: size,
              onSaveAddress: () => updateAddress(
                  context,
                  _addressController.text,
                  _floorController.text,
                  _landmarkController.text),
            ).pOnly(
              left: 15,
              right: 15,
              top: 20,
            )
          ],
        ),
      ),
    );
  }

  void updateAddress(BuildContext context, String completeAddress,
      String floorAddress, String nearbyAddress) {
    String combinedAddress = "$floorAddress $completeAddress $nearbyAddress";

    context.read(finalAddressProvider.notifier).updateAddress(combinedAddress);
    // Show a toast or perform any other actions after updating the address
    Fluttertoast.showToast(msg: 'Address updated successfully.');
    Navigator.pop(context);
  }

  // Function to get the current location of the user
}
