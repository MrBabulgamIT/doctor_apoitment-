import 'package:doctor_appoinment/model/on_boarding.dart';
import 'package:doctor_appoinment/screen/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pagecontroller = PageController();
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  forwardAction() {
    if (isLastPage) {
      Get.to(LoginPage());
    } else
      pagecontroller.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnBoardingModel> onboardingPages = [
    OnBoardingModel("images/on_b_1.jpg", "Find your doctor",
        '"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident"'),
    OnBoardingModel("images/on_b_2.jpg", "Find your doctor",
        '"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident"'),
    OnBoardingModel("images/on_b_3.jpg", "Find your doctor",
        ' "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident"'),
  ];
}
