//not using this

import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GetCurrentLoacation extends StatefulWidget {
  final TextEditingController _addressController;

  const GetCurrentLoacation({required TextEditingController addressController})
      : _addressController = addressController;

  @override
  State<GetCurrentLoacation> createState() => _GetCurrentLoacationState();
}

class _GetCurrentLoacationState extends State<GetCurrentLoacation> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ELightGreen),
      ),
      onPressed: _getCurrentLocation,
      child: const Text('Get Current Location'),
    );
  }

  void _getCurrentLocation() async {
    bool isLocationEnabled =
        await geolocator.Geolocator.isLocationServiceEnabled();
    if (!isLocationEnabled) {
      Fluttertoast.showToast(msg: 'Location services are disabled.');
      return;
    }

    LocationPermission permission =
        await geolocator.Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await geolocator.Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Location permission denied.');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(
          msg:
              'Location permissions are permanently denied, we cannot request permissions.');
      return;
    }

    geolocator.Position position;
    try {
      position = await geolocator.Geolocator.getCurrentPosition(
        desiredAccuracy: geolocator.LocationAccuracy.high,
      );
    } catch (e) {
      print('Error: $e');
      Fluttertoast.showToast(msg: 'Error getting location.');
      return;
    }

    setState(() {
      widget._addressController.text =
          "${position.latitude}, ${position.longitude}";
    });

    // Get the placemark for the provided latitude and longitude
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      // Extract and display the address from the placemark
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        String address =
            "${placemark.street}, ${placemark.subLocality}, ${placemark.locality}, ${placemark.administrativeArea}, ${placemark.country}";
        setState(() {
          widget._addressController.text = address;
        });
        Fluttertoast.showToast(msg: 'Location updated successfully.');
      } else {
        Fluttertoast.showToast(msg: 'No address found for the location.');
      }
    } catch (e) {
      print('Error: $e');
      Fluttertoast.showToast(msg: 'Error getting placemark.');
    }
  }
}
