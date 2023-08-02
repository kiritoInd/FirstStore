import 'package:easyshop_app/src/features/home/views/widgets/customAppBarWidget.dart';
import 'package:easyshop_app/src/features/notificationPage/view/widgets/notificaitonListView.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:easyshop_app/src/res/lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificaitonPageViewAll extends StatelessWidget {
  const NotificaitonPageViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(
        BottomStackcolor: Colors.white,
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 210,
          height: 24,
          child: ("").text.xl2.bold.color(Colors.black).make(),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: 80,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      CupertinoIcons.bell_circle_fill,
                      color: EstartBackgroundColor,
                      size: 30,
                    ),
                    ("Notifications").text.xl2.bold.make().pOnly(left: 17)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: ("Mark all as Read").text.make())
                  ],
                ),
              ],
            ).pOnly(left: 20, right: 20),
          ),
          Container(
                  height: size.height * 0.69,
                  width: size.width,
                  child: NotificationListView(notifications: notifications))
              .pOnly(top: 10),
        ],
      ),
    );
  }
}
