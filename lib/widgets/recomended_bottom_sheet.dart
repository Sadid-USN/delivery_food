import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/detail_icon.dart';
import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/widgets/big_text.dart';
import 'package:flutter/material.dart';

class RecomendedBottomSheet extends StatelessWidget {
  const RecomendedBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: Dimentions.width20 * 2.5,
              right: Dimentions.width20 * 2.5,
              top: Dimentions.height10,
              bottom: Dimentions.height10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                height: 40,
                width: 40,
                iconSize: Dimentions.font26,
                bgColor: AppColors.mainColor,
                iconColor: AppColors.whiteColor,
                isPadding: false,
                icon: Icons.remove,
              ),
              BigText(
                text: '\$12.88 ' ' X ' ' 0 ',
                color: AppColors.mainBlackColor,
                size: Dimentions.font26,
              ),
              AppIcon(
                height: 40,
                width: 40,
                iconSize: Dimentions.font26,
                bgColor: AppColors.mainColor,
                iconColor: AppColors.whiteColor,
                isPadding: false,
                icon: Icons.add,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(Dimentions.height20),
          width: double.maxFinite,
          height: Dimentions.screenHeight / 3 * 0.4,
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
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(Dimentions.radius20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width10),
                height: Dimentions.screenHeight / 4 * 0.3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.mainColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(Dimentions.radius20),
                ),
                child: const BigText(
                  text: '\$10 | Add to cart',
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
