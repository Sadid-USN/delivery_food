import 'package:flutter/material.dart';

import 'package:delivery_food/utils/app_colors.dart';
import 'package:delivery_food/utils/dimentions.dart';
import 'package:delivery_food/data/path_images.dart';
import 'package:delivery_food/widgets/big_text.dart';
import 'package:delivery_food/widgets/icon_text_widget.dart';
import 'package:delivery_food/widgets/small_text.dart';

class ListOfFood extends StatelessWidget {
  const ListOfFood({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              left: Dimentions.width20,
              right: Dimentions.width10,
              bottom: Dimentions.height10,
            ),
            child: Row(
              children: [
                Container(
                  height: Dimentions.listViewImgWidth,
                  width: Dimentions.listViewImgWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimentions.radius20,
                    ),
                    image: DecorationImage(
                        image: AssetImage(data[index].image),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: Dimentions.width10, top: Dimentions.height10),
                    height: Dimentions.listViewTextContSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimentions.radius20),
                        bottomRight: Radius.circular(Dimentions.radius20),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: data[index].title!),
                        const SizedBox(
                          height: 8.0,
                        ),
                        SmallText(text: data[index].subtitle!),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: Dimentions.width10),
                          child: Row(
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
