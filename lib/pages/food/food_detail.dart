import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/detail_icon.dart';
import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/data/path_images.dart';
import 'package:delivery_food/widgets/big_text.dart';
import 'package:delivery_food/widgets/description_text.dart';
import 'package:flutter/material.dart';
import '../../widgets/detail_bottom_sheet.dart';

//! 4:05
class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          // background img
          Positioned(
            left: 0.0,
            right: 0.0,
            child: Container(
              width: double.maxFinite,
              height: Dimentions.foodDetailImg,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data[0].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Icon widget

          Positioned(
            top: Dimentions.iconSize,
            left: Dimentions.width10,
            right: Dimentions.width10,
            child: const AppIcon(
              icon1: Icons.arrow_back_ios,
              icon2: Icons.shopping_cart_outlined,
            ),
          ),
          // Detail of food
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            top: Dimentions.foodDetailImg / 2 * 1.9,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimentions.width20,
                  right: Dimentions.width20,
                  top: Dimentions.height20),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Dimentions.radius20,
                  ),
                  topRight: Radius.circular(
                    Dimentions.radius20,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailBottomSheet(
                    text: data[0].text!,
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
                  const BigText(
                    text: 'Introduce',
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: DescriptionCollapseText(
                        text: data[0].description!,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          // Description Text
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimentions.screenHeight / 2 * 0.3,
        padding: EdgeInsets.only(
            left: Dimentions.height30,
            right: Dimentions.height30,
            top: Dimentions.height30,
            bottom: Dimentions.height30),
        decoration: BoxDecoration(
          color: AppColors.buttoBGcolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimentions.radius20 * 2),
            topRight: Radius.circular(Dimentions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimentions.width10,
                right: Dimentions.width10,
                top: Dimentions.height10,
                bottom: Dimentions.height10,
              ),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                      color: AppColors.mainBlackColor,
                    ),
                  ),
                  const BigText(
                    text: '0',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: AppColors.mainBlackColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimentions.width10,
                right: Dimentions.width10,
                top: Dimentions.height10,
                bottom: Dimentions.height10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.mainColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const BigText(
                text: '\$10 | Add to cart',
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
