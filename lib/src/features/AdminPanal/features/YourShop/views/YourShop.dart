import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/YourShopHome.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/widgets/CustomBottomAppBar.dart';
import 'package:flutter/material.dart';

class YourShop extends StatefulWidget {
  const YourShop({Key? key});

  @override
  State<StatefulWidget> createState() => _YourShopState();
}

class _YourShopState extends State<YourShop> {
  int _currentIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      page1(),
      ShopHomePage(),
      page3(),
      // Add your actual pages here
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(
        // Use your custom bottom app bar
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

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home"),
    );
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Favorites Page"),
    );
  }
}

class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("History"),
    );
  }
}
