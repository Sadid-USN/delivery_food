import 'package:delivery_food/pages/food/food_detail.dart';
import 'package:delivery_food/pages/food/recommended_food_detail.dart';
import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/data/path_images.dart';
import 'package:delivery_food/widgets/list_of_food_and_images.dart';
import 'package:delivery_food/widgets/page_items.dart';
import 'package:delivery_food/widgets/popular_header.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);
  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimentions.pageViewContainer;
  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        // print('current value is $_currentPageValue');
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print('Current height ${MediaQuery.of(context).size.height}');
    return Column(
      children: [
        //! Slider section
        SizedBox(
          height: Dimentions.mainPageViewContainer,
          child: PageView.builder(
            controller: pageController,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FoodDetail();
                  }));
                },
                child: PageItems(
                  index: index,
                  currentPageValue: _currentPageValue,
                  scaleFactor: _scaleFactor,
                  height: _height,
                ),
              );
            },
          ),
        ),
        //! Dots
        DotsIndicator(
          dotsCount: data.length,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        //! Popular text
        SizedBox(
          height: Dimentions.height20,
        ),
        const PopularHeader(),
        //! List of Food & Images
        SizedBox(
          height: Dimentions.height20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const RecommendedFoodDetail();
            }));
          },
          child: const ListOfFood(),
        ),
      ],
    );
  }
}
