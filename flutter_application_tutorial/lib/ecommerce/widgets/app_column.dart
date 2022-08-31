import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/ecommerce/utils/colors.dart';
import 'package:flutter_application_tutorial/ecommerce/utils/dimensions.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/big_text.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/icon_and_text_widget.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({
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
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        // comments sections
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) =>
                    Icon(Icons.star, color: AppColors.mainColor, size: 15),
              ),
            ),
            SizedBox(width: 10.0),
            SmallText(text: "4.5"),
            SizedBox(width: 10.0),
            SmallText(text: "12878"),
            SizedBox(width: 10.0),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        // time and distance sections
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
