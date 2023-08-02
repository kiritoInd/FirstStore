import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationListView extends StatelessWidget {
  final List<Map<String, dynamic>> notifications;

  NotificationListView({required this.notifications});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return Container(
          height: 130,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 95,
                width: size.width * 0.93,
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 4,
                  child: ListTile(
                    selectedTileColor: lightgreen,
                    leading: Icon(
                      notification['icon'],
                      color: EstartBackgroundColor,
                      size: 28,
                    ),
                    title: Text(notification['title']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(notification['description']).pOnly(top: 3),
                        Text(notification['date']).pOnly(top: 4),
                      ],
                    ),
                  ).pOnly(top: 13),
                ),
              ),
              SizedBox(
                width: 350,
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {}, child: ("View Details").text.make())
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
