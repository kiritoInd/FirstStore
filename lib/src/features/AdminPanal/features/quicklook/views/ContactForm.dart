import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/controller/Contact_controller.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/repos/contact_provider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/views/widgets/CustomAppBarForms.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/views/widgets/FormFieldWidget.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactForm extends ConsumerWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contactNumberController = ref.watch(contactNumControllerProvider);
    final altcontactNumberController = ref.watch(altNumControllerProvider);
    final emailaddressController = ref.watch(emailControllerProvider);

    return Scaffold(
      backgroundColor: ewhitishBg,
      appBar: const CustomAppbarForms(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 340,
                child: ("Edit Contact Details")
                    .text
                    .size(24)
                    .align(TextAlign.left)
                    .bold
                    .make(),
              ).pOnly(bottom: 40, top: 20),
              SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Contact Number:",
                      hintText: "e.g., +1234567890",
                      keyboardType: TextInputType.number,
                      controller: altcontactNumberController,
                      provider: contactNumberProvider,
                    ),
                  ],
                ),
              ).pOnly(bottom: 15),
              SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Alternate phone number:",
                      hintText: "e.g., +1234567890",
                      keyboardType: TextInputType.number,
                      controller: contactNumberController,
                      provider: altNumberProvider,
                    ),
                    const Text(
                      "Please enter an alternate phone number if available",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ).pOnly(left: 3),
                  ],
                ),
              ).pOnly(bottom: 15),
              SizedBox(
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Email address: ",
                      hintText: "e.g., youremail@gmail.com",
                      keyboardType: TextInputType.emailAddress,
                      controller: emailaddressController,
                      provider: emailAdressProvider,
                    ),
                    const Text(
                      "This field is optional. Please enter an email address if available.  ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ).pOnly(left: 3),
                  ],
                ),
              ).pOnly(bottom: 50),
              const Divider(
                thickness: 2,
              ).pOnly(top: 30),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {},
                      buttonText: "CANCEL",
                      buttonColor: Colors.white,
                      textColor: EstartBackgroundColor,
                      textsize: 16,
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      buttonText: "SAVE",
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      textsize: 16,
                    ),
                  ),
                ],
              ).pOnly(top: 10),
            ],
          ).pOnly(left: 12, right: 12),
        ),
      ),
    );
  }
}
