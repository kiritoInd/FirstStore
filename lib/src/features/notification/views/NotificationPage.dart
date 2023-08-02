import 'package:easyshop_app/src/features/home/views/Home.dart';
import 'package:easyshop_app/src/features/notification/views/widgets/notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _showNotificationDialog();
    });
  }

  void _showNotificationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return NotificationDialog(
          title: '“App” would like to send you notifications',
          message:
              'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.',
          onAction: (bool result) {
            if (result) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 127, 125, 125),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                SizedBox(
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: const AssetImage("assets/images/Notification.png"),
                    height: size.height * 0.50,
                    width: size.width,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
