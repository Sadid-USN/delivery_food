import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/widgets/small_text.dart';
import 'package:flutter/material.dart';

//! 4:30
class DescriptionCollapseText extends StatefulWidget {
  final String text;
  const DescriptionCollapseText({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  State<DescriptionCollapseText> createState() =>
      _DescriptionCollapseTextState();
}

class _DescriptionCollapseTextState extends State<DescriptionCollapseText> {
  late String firstHalf;
  late String secondtHalf;
  bool hiddenText = true;
  double textHeight = Dimentions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondtHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondtHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondtHalf.isEmpty
          ? SmallText(
              heigth: 1.6,
              text: firstHalf,
              size: Dimentions.font16,
              fontWeight: FontWeight.w500,
              color: AppColors.mainBlackColor,
            )
          : Column(
              children: [
                const SizedBox(
                  height: 8.0,
                ),
                SmallText(
                  heigth: 1.6,
                  text: hiddenText
                      ? ('$firstHalf...')
                      : (firstHalf + secondtHalf),
                  size: Dimentions.font16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainBlackColor,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      const SmallText(
                        text: 'Show more',
                        color: AppColors.mainColor,
                        size: 14,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                )
              ],
            ),
    );
  }
}
