import 'dart:async';

import 'package:doctor_appoinment/controller/on_boaringcontroller.dart';
import 'package:doctor_appoinment/screen/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OnBoardingMain extends StatelessWidget {
  OnBoardingMain({Key? key}) : super(key: key);

  final _controller = OnBardingController();

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          controller: _controller.pagecontroller,
          onPageChanged: _controller.selectedPageIndex,
          itemCount: _controller.onboardingPages.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 54,
                    left: 30,
                    right: 30,
                  ),
                  child: Image(
                    image: AssetImage(
                        _controller.onboardingPages[index].iamgeMain),
                    fit: BoxFit.cover,
                    width: width,
                    height: 300,
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 1),
                    width: width,
                    height: height,
                    decoration: const BoxDecoration(
                        color: Color(0xff7E22CD),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 56,
                        ),
                        Text(
                          _controller.onboardingPages[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 34),
                          child: Text(
                            _controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              _controller.onboardingPages.length,
                              (index) => Obx(() {
                                    return Container(
                                      margin: EdgeInsets.all(6),
                                      height: 12,
                                      width:
                                          _controller.selectedPageIndex.value ==
                                                  index
                                              ? 36
                                              : 12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                      ),
                                    );
                                  })),
                        ),
                        //   Padding(
                        //       padding: EdgeInsets.symmetric(
                        //           horizontal: 12, vertical: 30),
                        //       child: Obx(() {
                        //         return GestureDetector(
                        //             onTap: () {
                        //               _controller.forwardAction;
                        //             },
                        //             child: Container(
                        //                 width: width,
                        //                 height: 44,
                        //                 decoration: BoxDecoration(
                        //                     borderRadius:
                        //                         BorderRadius.circular(20),
                        //                     color: Colors.white),
                        //                 child: Center(
                        //                     child: Text(
                        //                   "Get Started",
                        //                   style: TextStyle(
                        //                       fontSize: 15,
                        //                       fontWeight: FontWeight.w700),
                        //                 ))));
                        //       }))

                        GestureDetector(
                            onTap: _controller.forwardAction,
                            child: Obx(() {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: _controller.isLastPage
                                    ? Container(
                                        width: width,
                                        height: 44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Center(
                                            child: Text(
                                          "Get Started",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        )))
                                    : Container(
                                        width: width,
                                        height: 44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Center(
                                            child: Text(
                                          "Get Started",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ))),
                              );
                            }))
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}

// class NewPage extends StatelessWidget {
//   const NewPage({
//     Key? key,
//     required OnBardingController controller,
//     required this.width,
//   })  : _controller = controller,
//         super(key: key);

//   final OnBardingController _controller;
//   final double width;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       child: Stack(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               // Image(
//               //   image: AssetImage(_controller.onboardingPages[index].iamgeMain),
//               //   width: width,
//               //   height: 300,
//               //   fit: BoxFit.cover,
//               // ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "_controller.onboardingPages[index].title",
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                     fontStyle: FontStyle.italic),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "_controller.onboardingPages[index].description",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
//               ),
//             ],
//           ),
//           Positioned(
//             bottom: 5,
//             left: 0,
//             right: 0,
//             child: Row(
//               children: List.generate(
//                   _controller.onboardingPages.length,
//                   (index) => Obx(() {
//                         return Container(
//                           margin: EdgeInsets.all(4),
//                           padding: EdgeInsets.all(4),
//                           height: 17,
//                           width: _controller.selectedPageIndex.value == index
//                               ? 40
//                               : 17,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(40),
//                             color: _controller.selectedPageIndex.value == index
//                                 ? Colors.red
//                                 : Colors.red,
//                           ),
//                         );
//                       })),
//             ),
//           ),
//           Positioned(
//               bottom: 5,
//               right: 8,
//               child: FloatingActionButton(
//                   onPressed: _controller.forwardAction,
//                   child: Obx(() {
//                     return Text(_controller.isLastPage ? "start" : "Next");
//                   })))
//         ],
//       ),
//     );
//   }
// }
