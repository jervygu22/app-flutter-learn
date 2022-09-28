import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/ecommerce/utils/colors.dart';
import 'package:flutter_application_tutorial/ecommerce/utils/dimensions.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/app_column.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/app_icon.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/big_text.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/expandable_text_widget.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/icon_and_text_widget.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/image6.jpg"),
                ),
              ),
            ),
          ),
          // icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImageSize - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                      text:
                          "Nike SB X Air Jordan 1 Retro High Defiant 'LA to Chicago'"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "First released in May, the Air Jordan 1 High OG Defiant “LA To Chicago” restocks at several European stores this month. One of the most coveted sneakers of 2019 this far, the super-limited drop left many people empty-handed. So those who missed out on the initial Nike release now get another chance. First released in May, the Air Jordan 1 High OG Defiant “LA To Chicago” restocks at several European stores this month. One of the most coveted sneakers of 2019 this far, the super-limited drop left many people empty-handed. So those who missed out on the initial Nike release now get another chance. First released in May, the Air Jordan 1 High OG Defiant “LA To Chicago” restocks at several European stores this month. One of the most coveted sneakers of 2019 this far, the super-limited drop left many people empty-handed. So those who missed out on the initial Nike release now get another chance. First released in May, the Air Jordan 1 High OG Defiant “LA To Chicago” restocks at several European stores this month. One of the most coveted sneakers of 2019 this far, the super-limited drop left many people empty-handed. So those who missed out on the initial Nike release now get another chance. First released in May, the Air Jordan 1 High OG Defiant “LA To Chicago” restocks at several European stores this month. One of the most coveted sneakers of 2019 this far, the super-limited drop left many people empty-handed. So those who missed out on the initial Nike release now get another chance."),
                    ),
                  ), // expandable text widget,
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar, // 120
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
