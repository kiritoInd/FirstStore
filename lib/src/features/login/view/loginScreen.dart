import 'package:easyshop_app/src/features/login/view/LoginPage.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/login/view/widgets/divider_Login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //this size provides

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              SizedBox(
                height: 440,
                child: Image(
                  fit: BoxFit.cover,
                  image: const AssetImage("assets/images/loginScreen.png"),
                  height: size.height * 0.52,
                  width: size.width,
                ),
              ),
              Transform.translate(
                offset: Offset(size.width * 0.35, size.height * 0.1),
                child: const Text(
                  "Easy Shop",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),

          // ******************* button area *******************************

          const SizedBox(height: defaultPadding * 4),
          SizedBox(
            height: 45,
            width: 300,
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              buttonText: 'Login',
              buttonColor: EstartBackgroundColor,
              textColor: Colors.white, // Optional, can be omitted
            ),
          ),
          const SizedBox(height: defaultPadding * 0.7),
          Container(
            height: 45,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: EtextColorGreen,
                )),
            child: CustomElevatedButton(
              onPressed: () {},
              buttonText: 'Register',
              buttonColor: EtextColorWhite,
            ),
          ),
          const SizedBox(height: defaultPadding * 1),

          const DividerLogin(),

          const SizedBox(height: defaultPadding * 1.3),

          Container(
            width: 300,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: EtextColorGreen,
                )),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/google.png"),
                      height: 27,
                    ),
                    SizedBox(width: defaultPadding * 4.9),
                    Text(
                      "Google",
                      style: TextStyle(
                        color:
                            EtextColorGreen, // Use provided textColor or default to black
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
          ),

          const SizedBox(height: defaultPadding * 1),

          Container(
            width: 300,
            height: 45,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: Color.fromARGB(255, 42, 167, 239),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/vector.png"),
                      height: 27,
                    ),
                    SizedBox(width: defaultPadding * 4.3),
                    Text(
                      "Facebook",
                      style: TextStyle(
                        color:
                            EtextColorWhite, // Use provided textColor or default to black
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
