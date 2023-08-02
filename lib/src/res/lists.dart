import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:easyshop_app/src/res/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const slidersList = [
  ImageAssets.imageSlider1,
  ImageAssets.imageSlider1,
  ImageAssets.imageSlider1,
  ImageAssets.imageSlider1,
];
const slidersList2 = [
  ImageAssets.topbrandBanner,
  ImageAssets.topbrandBanner,
  ImageAssets.topbrandBanner,
  ImageAssets.topbrandBanner,
];

const categoryList = [
  ImageAssets.catogorySlider1,
  ImageAssets.catogorySlider2,
  ImageAssets.catogorySlider3,
  ImageAssets.catogorySlider4,
  ImageAssets.catogorySlider5,
  ImageAssets.catogorySlider6,
  ImageAssets.catogorySlider7,
];
const categoryProductList1 = [
  ImageAssets.catagoryProduct1,
  ImageAssets.catagoryProduct2,
  ImageAssets.catagoryProduct3,
  ImageAssets.catagoryProduct4,
];
const categoryProductList2 = [
  ImageAssets.catagoryProduct5,
  ImageAssets.catagoryProduct6,
  ImageAssets.catagoryProduct7,
  ImageAssets.catagoryProduct8,
];
const categoryProductList3 = [
  ImageAssets.catagoryProduct9,
  ImageAssets.catagoryProduct10,
  ImageAssets.catagoryProduct11,
  ImageAssets.catagoryProduct12,
];
const categoryProductList4 = [
  ImageAssets.catagoryProduct13,
  ImageAssets.catagoryProduct14,
  ImageAssets.catagoryProduct15,
  ImageAssets.catagoryProduct16,
];
List<String> categoryProductListtext1 = [
  sofaSet,
  diningTable,
  officeDesk,
  bedFrame,
];

List<String> categoryTextList = [
  riceandatta,
  vegitableNfruits,
  dairyNbreakfast,
  cleaningEssentials,
  personalCare,
  babyCare,
  petCare,
];

class Coupon {
  final String code;
  final double discount;
  final String couponDesc;
  Coupon(
      {required this.code, required this.discount, required this.couponDesc});
}

final List<Coupon> couponsList = [
  Coupon(
      code: "Frdlnew",
      discount: 10.0,
      couponDesc:
          "User code FRDLNEW and get free delivery on orders above 50 on your first 5 orderson instamatic."),
  Coupon(
      code: "FALL20",
      discount: 20.0,
      couponDesc:
          "User code FRDLNEW and get free delivery on orders above 50 on your first 5 orderson instamatic."),
  Coupon(
      code: "WINTER30",
      discount: 30.0,
      couponDesc:
          "User code FRDLNEW and get free delivery on orders above 50 on your first 5 orderson instamatic."),
  Coupon(
      code: "INTER",
      discount: 30.0,
      couponDesc:
          "User code FRDLNEW and get free delivery on orders above 50 on your first 5 orderson instamatic."),
  // Add more coupons here...
];

final List<Map<String, dynamic>> notifications = [
  {
    'icon': CupertinoIcons.exclamationmark_circle_fill,
    'title': 'Notification 1',
    'description': 'This is the description of notification 1.',
    'date': '2023-07-25',
  },
  {
    'icon': CupertinoIcons.checkmark_seal,
    'title': 'Notification 2',
    'description': 'This is the description of notification 2.',
    'date': '2023-07-24',
  },
  {
    'icon': Icons.notifications,
    'title': 'Notification 2',
    'description': 'This is the description of notification 2.',
    'date': '2023-07-24',
  },
  {
    'icon': Icons.notifications,
    'title': 'Notification 2',
    'description': 'This is the description of notification 2.',
    'date': '2023-07-24',
  },

  {
    'icon': Icons.notifications,
    'title': 'Notification 2',
    'description': 'This is the description of notification 2.',
    'date': '2023-07-24',
  },
  // Add more notifications here
];

List<Function(BuildContext)> catogorySliderCallback = [
  (context) {
    print('Clicked the first image');
  },
  (context) {
    // Action for the second image
    print('Clicked the second image');
  },
  (context) {
    // Action for the third image
    print('Clicked the third image');
  },
  (context) {
    // Action for the third image
    print('Clicked the fourth image');
  },
  (context) {
    // Action for the second image
    print('Clicked the 5th image');
  },
  (context) {
    // Action for the third image
    print('Clicked the 6th image');
  },
  (context) {
    // Action for the third image
    print('Clicked the 7th image');
  },
  // Add more functions for additional images if needed
];

List<Function(BuildContext)> homebannerImageCallback = [
  (context) {
    print('Clicked the first image');
  },
  (context) {
    // Action for the second image
    print('Clicked the second image');
  },
  (context) {
    // Action for the third image
    print('Clicked the third image');
  },
  (context) {
    // Action for the third image
    print('Clicked the fouth image');
  },
  // Add more functions for additional images if needed
];
