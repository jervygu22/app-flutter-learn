import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // 844/220 = 3.84
  // flutter: height is 896.0
  // flutter: width is 414.0

  static double pageView = screenHeight / 2.8; // 7.03

  static double pageViewContainer = screenHeight / 4.07; // 3.84
  static double pageViewTextContainer = screenHeight / 7.46; // 7.03

  static double height5 = screenHeight / 179.2; // 7.03
  static double height10 = screenHeight / 89.6;
  static double height15 = screenHeight / 59.7;
  static double height20 = screenHeight / 44.8;
  static double height25 = screenHeight / 35.84;
  static double height30 = screenHeight / 29.87;
  static double height35 = screenHeight / 25.6;
  static double height40 = screenHeight / 22.4;
  static double height45 = screenHeight / 19.91;
  static double height50 = screenHeight / 17.92;

  static double width10 = screenHeight / 89.6;
  static double width15 = screenHeight / 59.7;
  static double width20 = screenHeight / 44.8;
  static double width25 = screenHeight / 35.84;
  static double width30 = screenHeight / 29.87;
  static double width35 = screenHeight / 25.6;
  static double width40 = screenHeight / 22.4;
  static double width45 = screenHeight / 19.91;
  static double width50 = screenHeight / 17.92;

  static double font20 = screenHeight / 44.8;

  static double radius5 = screenHeight / 179.2;
  static double radius10 = screenHeight / 89.6;
  static double radius15 = screenHeight / 59.7;
  static double radius20 = screenHeight / 44.8;
  static double radius30 = screenHeight / 29.87;

  static double iconSize24 = screenHeight / 37.33;

  // screen width 414
  static double listViewImageSize = screenWidth / 3.45;
  static double listViewTextContainerSize = screenWidth / 4.14;
}
