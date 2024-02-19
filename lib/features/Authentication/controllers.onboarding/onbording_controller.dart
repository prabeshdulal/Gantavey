import 'package:flutter/cupertino.dart';
import 'package:gantabya/features/Authentication/screens/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  //variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if(currentPageIndex.value==2){
      //getToLoginPage
      Get.offAll(const LoginPage());
    }
    else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  void skipPage() {
    currentPageIndex.value= 2;
    Get.offAll(const LoginPage());

  }
}