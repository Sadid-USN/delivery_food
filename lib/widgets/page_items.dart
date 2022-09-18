import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/data/path_images.dart';
import 'package:delivery_food/widgets/big_text.dart';
import 'package:delivery_food/widgets/icon_text_widget.dart';
import 'package:delivery_food/widgets/small_text.dart';
import 'package:flutter/material.dart';

//! 2:38
class PageItems extends StatelessWidget {
  final int index;
  final double currentPageValue;
  final double scaleFactor;
  final double height;
  const PageItems(
      {Key? key,
      required this.index,
      required this.currentPageValue,
      required this.scaleFactor,
      required this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Matrix4 matrix4 = Matrix4.identity();
    // if (index == currentPageValue.floor() + 1) {
    //   var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
    //   var currentTrans = height * (1 - currScale) / 2;
    //   matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
    //     ..setTranslationRaw(0, currentTrans, 0);

    //   //! else if
    // } else if (index == currentPageValue.floor() + 1) {
    //   var currScale = (currentPageValue - index + 1) * (1 - scaleFactor);
    //   var currentTrans = height * (1 - currScale) / 2;
    //   matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
    //   matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
    //     ..setTranslationRaw(0, currentTrans, 0);
    //   //! else if
    // } else if (index == currentPageValue.floor() - 1) {
    //   var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
    //   matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
    //   matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
    //     ..setTranslationRaw(0, currScale, 0);
    // } else {
    //   var currScale = 0.8;
    //   matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
    //     ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 1);
    // }
    return Stack(
      children: [
        Container(
          height: Dimentions.pageViewContainer,
          margin: EdgeInsets.only(
              //  left: Dimentions.width10,
              right: Dimentions.width10,
              top: Dimentions.height10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimentions.radius30),
            image: DecorationImage(
                image: AssetImage(data[index].image), fit: BoxFit.cover),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dimentions.pageViewTextContainer,
            margin: EdgeInsets.only(
                left: Dimentions.width20,
                right: Dimentions.width20,
                bottom: Dimentions.width16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimentions.radius20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  offset: Offset(0.5, 0.0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, 0.0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5, 0.0),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: Dimentions.width16,
                left: Dimentions.width16,
                right: Dimentions.width16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: data[index].text!,
                  ),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 250, 168, 4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const SmallText(text: "4.5"),
                      SizedBox(
                        width: Dimentions.height10,
                      ),
                      const SmallText(text: "1287"),
                      SizedBox(
                        width: Dimentions.height10,
                      ),
                      const SmallText(text: "comments"),
                    ],
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        iconColor: AppColors.iconColor1,
                        text: 'Normal',
                      ),
                      IconAndTextWidget(
                        icon: Icons.location_on,
                        iconColor: AppColors.mainColor,
                        text: '1.7km',
                      ),
                      IconAndTextWidget(
                        icon: Icons.access_time_rounded,
                        iconColor: AppColors.iconColor2,
                        text: '32min',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
