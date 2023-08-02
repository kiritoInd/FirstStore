import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({Key? key}) : super(key: key);

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool _isOn = false;

  void _toggleSwitch() {
    setState(() {
      _isOn = !_isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: Container(
        width: 55.0,
        height: 26.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: _isOn ? ELightGreyhome : ELightGreyhome,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: _isOn ? 28.0 : 0.0,
              child: Container(
                width: 20.0,
                height: 20.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ELightGreen,
                ),
              ).pOnly(top: 3, left: 4),
            ),
          ],
        ),
      ),
    );
  }
}
