import 'package:flutter/material.dart';

import 'package:delivery_food/widgets/big_text.dart';
import 'package:delivery_food/widgets/icon_text_widget.dart';
import 'package:delivery_food/widgets/small_text.dart';

import '../utils/app_colors.dart';
import '../utils/dimentions.dart';

class DetailBottomSheet extends StatelessWidget {
  final String text;
  const DetailBottomSheet({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimentions.font26,
          fontWeight: FontWeight.w600,
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
        const SizedBox(
          height: 20,
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
    );
  }
}
