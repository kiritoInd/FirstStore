import 'package:easyshop_app/src/features/welcome/view/Welcome_screen.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _colorAnimation = ColorTween(begin: Colors.black, end: Colors.white)
        .animate(_animationController);

    _animationController.forward();
    _navigateStart();
  }

  _navigateStart() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EstartBackgroundColor,
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return FadeTransition(
              opacity: _animationController,
              child: SvgPicture.asset(
                ImageAssets.splash,
                color: _colorAnimation.value,
              ),
            );
          },
        ),
      ),
    );
  }
}
