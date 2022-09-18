import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/widgets/big_text.dart';
import 'package:delivery_food/widgets/small_text.dart';
import 'package:flutter/material.dart';

class PopularHeader extends StatelessWidget {
  const PopularHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimentions.width20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const BigText(text: 'Popular'),
          SizedBox(
            width: Dimentions.width10,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: SizedBox(
              child: BigText(
                text: '.',
                color: Colors.black26,
              ),
            ),
          ),
          SizedBox(
            width: Dimentions.width10,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 2.0),
            child: SizedBox(
              child: SmallText(text: 'Food pairing'),
            ),
          ),
        ],
      ),
    );
  }
}
