import 'package:flutter/material.dart';

import 'package:delivery_food/utils/app_colors.dart';

class AppIcon extends StatelessWidget {
  final double height;
  final double width;
  final double iconSize;
  final IconData icon;
  final EdgeInsets padding;

  final bool isPadding;
  final Color? bgColor;
  final Color? iconColor;
  final Function()? onTap;

  const AppIcon({
    Key? key,
    required this.icon,
    this.isPadding = true,
    this.padding = EdgeInsets.zero,
    this.height = 50.0,
    this.width = 50.0,
    this.onTap,
    this.bgColor,
    this.iconColor,
    this.iconSize = 26.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: isPadding ? 50.0 : width,
        height: isPadding ? 50.0 : height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: isPadding ? Colors.grey.shade200.withOpacity(0.7) : bgColor,
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: isPadding ? AppColors.mainBlackColor : iconColor,
        ),
      ),
    );
  }
}
