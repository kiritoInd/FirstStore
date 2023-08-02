import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';

import '../../login/view/loginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //this size provides

    return Scaffold(
      backgroundColor: EstartBackgroundColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            fit: BoxFit.cover,
            image: const AssetImage("assets/images/startscreen.png"),
            height: size.height * 0.53,
            width: size.width,
          ),
          const SizedBox(height: defaultPadding * 6),
          const Text(
            "Grocery",
            style: TextStyle(
              color: EtextColorWhite,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding * 1),
          const Text(
            "Shopping everything you need",
            style: TextStyle(
              color: EtextColorWhite,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: defaultPadding * 3),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: EtextColorGreen,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
