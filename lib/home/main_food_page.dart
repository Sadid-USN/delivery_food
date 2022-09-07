import 'package:delivery_food/food_page_body.dart';
import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/widgets/big_text.dart';
import 'package:delivery_food/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                margin: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const BigText(
                          text: 'Tajikistan',
                          color: AppColors.mainColor,
                          size: 22,
                        ),
                        Row(
                          children: const [
                            SmallText(
                              text: 'Dushanbe',
                              color: Colors.black54,
                            ),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const FoodPageBody()
          ],
        ),
      ),
    );
  }
}
