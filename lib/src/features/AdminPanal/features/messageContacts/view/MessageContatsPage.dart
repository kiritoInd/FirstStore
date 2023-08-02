import 'package:easyshop_app/src/features/AdminPanal/features/contacts/widget/SearchFiealdWidget.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/messageContacts/view/widgets/ButtonSection.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/messageContacts/view/widgets/MessageForm.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class MessageContactPage extends ConsumerWidget {
  const MessageContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size; //this size provides

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: SizedBox(
          width: 230,
          child: ("Manage Customer Communications")
              .text
              .xl2
              .align(TextAlign.center)
              .color(Colors.black)
              .bold
              .make(),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 320,
              height: 40,
              child: SearchWidget(
                elevation: 0,
              ),
            ).pOnly(top: 30),
            SizedBox(
              width: size.width,
              child: ("Shopkeeper Communication")
                  .text
                  .size(19)
                  .color(Colors.black87)
                  .bold
                  .make(),
            ).pOnly(
              top: 30,
              bottom: 30,
              left: 10,
            ),
            const ButtonSectionMessage().pOnly(bottom: 30),
            Row(
              children: [
                ("Message to:").text.size(16).bold.make(),
              ],
              /* list here to show the the recivers names */
            ).pOnly(left: 10, right: 10),
            MessageNFileUploadForm().pOnly(left: 10, right: 10, top: 20),
          ],
        ),
      ),
    );
  }
}
