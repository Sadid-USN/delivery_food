import 'package:flutter/material.dart';

import 'package:delivery_food/utils/app_colors.dart';

class AppIcon extends StatelessWidget {
  final double height;
  final double width;
  final IconData icon1;
  final IconData icon2;
  final bool isPadding;
  const AppIcon({
    Key? key,
    required this.icon1,
    required this.icon2,
    this.isPadding = true,
    this.height = 50.0,
    this.width = 50.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: isPadding ? 50.0 : width,
          height: isPadding ? 50.0 : height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: Colors.grey.shade200.withOpacity(0.7),
          ),
          child: Padding(
            padding:
                isPadding ? const EdgeInsets.only(left: 7) : EdgeInsets.zero,
            child: Icon(
              icon1,
              size: 20,
              color: AppColors.mainBlackColor,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: isPadding ? 50.0 : width,
          height: isPadding ? 50.0 : height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: Colors.grey.shade200.withOpacity(0.7),
          ),
          child: Icon(
            icon2,
            size: isPadding ? 25 : 20,
            color: AppColors.mainBlackColor,
          ),
        ),
      ],
    );
  }
}
