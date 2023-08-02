import 'package:easyshop_app/src/features/AdminPanal/features/contacts/widget/ContactInfoList.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/contacts/widget/HeadingWithBack.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/contacts/widget/SearchFiealdWidget.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/dasboard/views/widgets/AppbarDashBoard.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/dasboard/views/widgets/CustomDrawerDash.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/messageContacts/view/MessageContatsPage.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

import 'widget/CustomGradientTextButton.dart';

class ManageContactPage extends ConsumerWidget {
  const ManageContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size; //this size provides

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      appBar: AppbarDashBoard(),
      drawer: const CustomDrawerDash(),
      body: Column(
        children: [
          const HeadingWithBack().pOnly(right: 20, top: 2, left: 5),
          SizedBox(
            width: 320,
            height: 40,
            child: SearchWidget(),
          ).pOnly(top: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 170,
                height: 38,
                child: CustomGradientTextButton(
                  text: "Import Contacts",
                  onPressed: () {},
                  icon: CupertinoIcons
                      .arrow_up_doc, // Replace with your desired icon
                ),
              ),
              SizedBox(
                width: 170,
                height: 38,
                child: CustomGradientTextButton(
                  text: "Export Contacts",
                  onPressed: () {},
                  icon: CupertinoIcons
                      .arrow_down_doc, // Replace with your desired icon
                ),
              ),
            ],
          ).pOnly(top: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ("My Contacts").text.size(19).semiBold.make(),
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(5),
                child: Container(
                    width: 95,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: contactAdminButtonColor,
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessageContactPage(),
                          ),
                        );
                      },
                      buttonText: "Message",
                      textsize: 14,
                      buttonColor: contactAdminButtonColor,
                    )),
              )
            ],
          ).pOnly(left: 15, right: 12, top: 40, bottom: 20),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ContactInfoList(size: size)),
        ],
      ),
    );
  }
}
