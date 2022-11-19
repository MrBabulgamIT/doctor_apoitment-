import 'dart:async';

import 'package:doctor_appoinment/screen/on_boarding_page/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.to(OnBoardingMain());
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff7E22CD),
      body: Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage(
                  "images/ab.png",
                ),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ))),
    );
  }
}

// class OnBoardingMain extends StatelessWidget {
//   OnBoardingMain({Key? key}) : super(key: key);
//   final _controller = OnBardingController();
//   @override
//   Widget build(BuildContext context) {
//     final width = Get.width;
//     final height = Get.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//           child: ListView.builder(
//         itemCount: _controller.onboardingPages.length,
//         controller: _controller.pagecontroller,
//         itemBuilder: (contex, index) {
//           return Column(
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
//                 child: Image(
//                   image:
//                       AssetImage(_controller.onboardingPages[index].iamgeMain),
//                   height: 300,
//                   width: width,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 width: width,
//                 height: height,
//                 decoration: const BoxDecoration(
//                     color: Color(0xff7E22CD),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     )),
//                 child: Column(
//                   children: [
//                     Text(
//                       "_controller.onboardingPages[index].title",
//                       style: TextStyle(fontSize: 24, color: Colors.white),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           );
//         },
//       )),
//     );
//   }
// }
