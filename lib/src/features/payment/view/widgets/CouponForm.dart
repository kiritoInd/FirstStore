import 'package:flutter/material.dart';

class CouponForm extends StatelessWidget {
  final TextEditingController couponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: couponController,
      decoration: InputDecoration(
        hintText: "Enter Coupon Code",
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey.shade500, // Border color
        ),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey.shade300, // Border color
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade300, // Border color
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade300, // Border color when focused
          ),
        ),
      ),
    );
  }
}
