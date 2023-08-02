import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:flutter/material.dart';
import '../../../components/text_form_field.dart';
import '../../notification/views/NotificationPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBarHome(
          backgroundColor: EtextColorOlive,
          colorTitle: Colors.white,
          colorIcon: Colors.white,
          title: ("Login"),
          onLeadingPressed: () => Navigator.pop(context)),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, -55),
                  child: SizedBox(
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: const AssetImage("assets/images/loginpage.png"),
                      height: size.height * 0.49,
                      width: size.width,
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(0, -35),
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * 0.8,
                    child: const Text(
                      "Email",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: EtextColorBlackish,
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 0.4),
                  Container(
                    height: 50,
                    width: 320,
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 237, 237),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: EmailText(),
                  ),
                  const SizedBox(height: defaultPadding * 1),
                  SizedBox(
                    width: size.width * 0.8,
                    child: const Text(
                      "Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: EtextColorBlackish,
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 0.4),
                  Container(
                    height: 50,
                    width: 320,
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 237, 237, 237),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const PasswordText(),
                  ),
                  const SizedBox(height: defaultPadding * 0.2),
                  Container(
                    width: size.width * 0.8,
                    child: GestureDetector(
                      onTap: () {
                        // Handle Forgot Password
                      },
                      child: const Text(
                        "Forgot Password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 1.5),
                  SizedBox(
                    width: 320,
                    height: 50,
                    child: CustomElevatedButton(
                      buttonText: "Login",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationPage(),
                          ),
                        );
                      },
                      buttonColor: EstartBackgroundColor,
                      textColor: EtextColorWhite,
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 1.5),
                  GestureDetector(
                    onTap: () {
                      // Handle Forgot Password
                    },
                    child: const Text(
                      "Not have account? Register",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
