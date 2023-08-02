import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../res/Color_Pallet.dart';

class NavbarBottom extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavbarBottom({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  _NavbarBottomState createState() => _NavbarBottomState();
}

class _NavbarBottomState extends State<NavbarBottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, size: 30),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.bookmark, size: 25),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.square_grid_2x2, size: 30),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.shopping_cart, size: 30),
          label: '',
        ),
      ],
      selectedItemColor: EstartBackgroundColor,
      unselectedItemColor: EiconGrey,
    );
  }
}
