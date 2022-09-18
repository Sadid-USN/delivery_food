import 'package:delivery_food/data/path_images.dart';
import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/detail_icon.dart';
import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/widgets/big_text.dart';
import 'package:delivery_food/widgets/description_text.dart';
import 'package:flutter/material.dart';

//! 4:49
class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 60,
              title: const AppIcon(
                height: 40,
                width: 40,
                isPadding: false,
                icon1: Icons.close,
                icon2: Icons.shopping_cart_outlined,
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Container(
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
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 10.0,
                  ),
                  child: BigText(
                    text: data[0].text!,
                    size: Dimentions.font26,
                  ),
                ),
              ),
              pinned: true,
              backgroundColor: AppColors.mainColor,
              expandedHeight: Dimentions.screenHeight / 2 * 0.6,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  data[0].image,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: Dimentions.width16,
                  right: Dimentions.width16,
                ),
                child: SingleChildScrollView(
                  child: DescriptionCollapseText(
                    text: data[0].description!,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
