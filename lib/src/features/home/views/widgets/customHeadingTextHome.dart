import 'package:flutter/material.dart';

import '../../../search/view/SearchPage.dart';

class customHeadingTextHome extends StatelessWidget {
  final String title;
  final String viewAllText;
  final double titleFontSize;
  final double viewAllFontSize;

  const customHeadingTextHome({
    Key? key,
    this.title = "Best Deals",
    this.viewAllText = "View All",
    this.titleFontSize = 18,
    this.viewAllFontSize = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchPage()),
          ),
          child: Text(
            viewAllText,
            style: TextStyle(
              fontSize: viewAllFontSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
