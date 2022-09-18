import 'package:get/get.dart';

class Dimentions {
  static double screenHeight = Get.context!.height;
  static double screentWidth = Get.context!.width;
  //! dynamic heigth

  static double mainPageViewContainer = screenHeight / 2.45;
  static double pageViewContainer = screenHeight / 3.40;
  static double pageViewTextContainer = screenHeight / 6.50;

  //! dynamic width padding and margin
  static double width10 = screenHeight / 75.4;
  static double width16 = screenHeight / 50.27;
  static double width20 = screenHeight / 36.4;
  static double width30 = screenHeight / 28.13;

  static double height10 = screenHeight / 80.4;
  static double height16 = screenHeight / 56.27;
  static double height20 = screenHeight / 50.4;
  static double height30 = screenHeight / 25.4;

  //! Text font size
  static double font16 = screenHeight / 45.75;
  static double font20 = screenHeight / 40.2;

  static double font26 = screenHeight / 32.46;
  static double radius20 = screenHeight / 50.2;
  static double radius30 = screenHeight / 28.13;

  //! List view size
  static double listViewImgWidth = screentWidth / 3.25;
  static double listViewTextContSize = screentWidth / 3.9;

  //! Food detail
  static double foodDetailImg = screentWidth / 1.30;
  static double iconSize = screenHeight / 11.30;
}
