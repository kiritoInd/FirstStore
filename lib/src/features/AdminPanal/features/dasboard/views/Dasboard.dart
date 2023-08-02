import 'package:easyshop_app/src/features/AdminPanal/features/dasboard/views/widgets/AppbarDashBoard.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/dasboard/views/widgets/CustomDrawerDash.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

import 'widgets/dasboardConatiner.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 244, 244),
      appBar: AppbarDashBoard(),
      drawer: CustomDrawerDash(),
      body: Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DashBoardContainer(
              text1Color: Colors.black,
              text2Color: Colors.black,
              grad1: gradient1,
              grad2: gradient2,
              text1: '₹ 9,73,775',
              text2: 'Total revenue',
              text3: '23%',
              img1: Image.asset(ImageAssets.dashboard1),
              icon: const Icon(
                CupertinoIcons.arrow_up,
                color: Colors.blue,
                size: 15,
              ),
            ),
            DashBoardContainer(
              grad1: gradient3,
              grad2: gradient3,
              text1: '5,31,032',
              text2: 'Total Orders',
              text3: '23%',
              img1: Image.asset(ImageAssets.dashboard2),
              icon: const Icon(
                CupertinoIcons.arrow_up,
                color: Colors.blue,
                size: 15,
              ),
            ),
            DashBoardContainer(
              text1Color: Colors.black,
              text2Color: Colors.black,
              grad1: gradient1,
              grad2: gradient2,
              text1: '5,456',
              text2: 'New customers',
              text3: '23%',
              img1: Image.asset(ImageAssets.dashboard3),
              icon: const Icon(
                CupertinoIcons.arrow_up,
                color: Colors.blue,
                size: 15,
              ),
            ),
            DashBoardContainer(
              grad1: gradient3,
              grad2: gradient3,
              text1: '552',
              text2: 'Total store',
              text3: '23%',
              img1: Image.asset(ImageAssets.dashboard4),
              icon: const Icon(
                CupertinoIcons.arrow_up,
                color: Colors.blue,
                size: 15,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: ("Show All").text.bold.make(),
            )
          ],
        ).pOnly(top: 20),
      ),
    );
  }
}
