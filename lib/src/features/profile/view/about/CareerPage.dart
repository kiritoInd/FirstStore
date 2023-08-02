import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/features/profile/view/widget/customDropDown.dart';
import 'package:easyshop_app/src/features/profile/view/widget/listviewJobs.dart';
import 'package:easyshop_app/src/features/profile/view/widget/tablewithview.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Career extends StatelessWidget {
  const Career({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //this size provides

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ("20 Open Jobs").text.make(),
              Container(
                width: 230,
                height: 30,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search,
                        size: 20), // Add the search icon as a prefix
                    hintText: "Search Positions",
                    hintStyle:
                        const TextStyle(fontSize: 14), // Set the hint text
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey
                              .shade100), // Set the color of the bottom border
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Set the color of the bottom border when focused
                    ),
                  ),
                ),
              )
            ],
          ).pOnly(left: 10, right: 10, top: 20, bottom: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Department").text.lg.scale(1.1).make().pOnly(bottom: 2),
                  Container(
                    width: 140,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45)),
                    child: CustomDropdown<String>(
                      hintText: "All Departments",

                      items: const [
                        "Departments1",
                        "Departments2",
                        "Departments3"
                      ], // Replace with your list of items
                      value:
                          null, // Set the initial value here or provide a value from your state
                      onChanged: (newValue) {
                        // Handle the value change here
                        // For example, update the state with the new value
                      },
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ("Location").text.lg.scale(1.1).make().pOnly(bottom: 2),
                  Container(
                    width: 140,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45)),
                    child: CustomDropdown<String>(
                      hintText: "All Locations",

                      items: const [
                        "Locations1",
                        "Locations2",
                        "Locations3"
                      ], // Replace with your list of items
                      value:
                          null, // Set the initial value here or provide a value from your state
                      onChanged: (newValue) {
                        // Handle the value change here
                        // For example, update the state with the new value
                      },
                    ),
                  )
                ],
              ),
            ],
          ).pOnly(left: 10, right: 10, top: 10, bottom: 20),
          Container(width: 500, height: 200, child: ListViewPage()),
          Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 219, 231, 242)),
            child: Column(
              children: [
                ("Join Talent Pool").text.lg.bold.make().pOnly(top: 10),
                ("Join our talent pool by simply submitting your resume. We’ll inform you about the new jobs matching your profile and update you if you are the best fit for one of our open positions.")
                    .text
                    .align(TextAlign.center)
                    .make()
                    .pOnly(top: 20),
                Container(
                  width: 120,
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: TextButton(
                    onPressed: () {},
                    child: ("Submit Resume").text.color(Colors.white).make(),
                  ),
                ).pOnly(top: 20, bottom: 10)
              ],
            ).p12(),
          ).pOnly(top: 10, bottom: 30),
        ],
      ).pOnly(left: 12, right: 12),
    );
  }
}
