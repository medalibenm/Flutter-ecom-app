import 'package:get/get.dart';

class Homecontroller extends GetxController {
  static Homecontroller get instance => Get.find();

  final carousalIndex = 0.obs;

  void updateIndex(index) {
    carousalIndex.value = index;
  }
}
