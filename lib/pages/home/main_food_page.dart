import 'package:delivery_food/pages/home/food_page_body.dart';
import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/dimentions.dart';
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
      backgroundColor: AppColors.buttoBGcolor,
      body: SafeArea(
        child: Column(
          children: [
            //! Header section
            SizedBox(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width10),
                margin: EdgeInsets.only(
                    top: Dimentions.height10, bottom: Dimentions.height10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const BigText(
                          text: 'Turkey',
                          color: AppColors.mainColor,
                          size: 22,
                        ),
                        Row(
                          children: const [
                            SmallText(
                              text: 'Antalya',
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
                      height: MediaQuery.of(context).size.height / 2 * 0.1,
                      width: MediaQuery.of(context).size.width / 2 * 0.2,
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
            const Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
