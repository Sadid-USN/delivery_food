import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);
  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  //! 40:43
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.red,
      child: PageView.builder(
        controller: pageController,
        itemCount: 7,
        itemBuilder: (context, index) {
          return _buildPageItem(index);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5.0, right: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.greenAccent,
            image: const DecorationImage(
                image: AssetImage('assets/images/food1.png'),
                fit: BoxFit.cover),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            margin:
                const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
