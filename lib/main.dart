import 'package:easyshop_app/splash.dart';
import 'package:easyshop_app/src/features/home/views/Home.dart';
import 'package:easyshop_app/src/features/search/view/SearchPage.dart';
import 'package:easyshop_app/src/features/welcome/view/Welcome_screen.dart';
import 'package:easyshop_app/src/features/login/view/LoginPage.dart';
import 'package:easyshop_app/src/features/login/view/loginScreen.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easyshop_app/src/res/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
        theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            border: InputBorder.none, // Remove the underline for all TextFields
          ),
          fontFamily: GoogleFonts.inter().fontFamily,
          primaryColor: EstartBackgroundColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: MyRoutes.splash,
        routes: {
          MyRoutes.searchPageRoute: (context) => const WelcomeScreen(),
          MyRoutes.loginRoute: (context) => const LoginScreen(),
          MyRoutes.loginPageRoute: (context) => const LoginPage(),
          MyRoutes.homePageRoute: (context) => const Home(),
          MyRoutes.searchPageRoute: (context) => const SearchPage(),
          MyRoutes.splash: (context) => const Splash(),
        },
      );
    });
  }
}
