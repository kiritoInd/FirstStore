import 'package:easyshop_app/src/features/catogory/views/CatogoryPage.dart';
import 'package:easyshop_app/src/features/favorites/Favorites.dart';
import 'package:easyshop_app/src/features/home/views/HomePage.dart';
import 'package:easyshop_app/src/features/home/views/widgets/bottomNavigationBar.dart';
import 'package:easyshop_app/src/features/shopingcart/views/ShopingCart.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomePage(),
      const FavoritesPage(),
      const CatogoryPage(),
      const ShoppingCartWidget(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavbarBottom(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
    );
  }
}
