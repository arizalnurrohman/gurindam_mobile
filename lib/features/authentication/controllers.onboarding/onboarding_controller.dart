import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///variables

  ///update current index wen page scrol
  void updatePageIndicator(index) {}

  ///jump to the specific dot selected page
  void dotNavigationClick(index) {}

  ///update current index and jump  to nex page
  void nextPage() {}

  ///update current index and jump to last page
  void skipPage() {}
}
