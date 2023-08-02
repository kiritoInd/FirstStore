import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final Color? borderColor;
  final String searchQuery;
  final void Function(String) onChanged;

  const SearchField({
    Key? key,
    this.borderColor,
    required this.searchQuery,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor ?? const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      child: TextFormField(
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintTextDirection: TextDirection.ltr,
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.black,
            size: 18,
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            fontSize: 16.5,
          ),
        ),
      ),
    );
  }
}
