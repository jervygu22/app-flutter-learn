import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/ecommerce/ecommerce_screens.dart';
import 'package:flutter_application_tutorial/ecommerce/pages/home/food_page_body.dart';
import 'package:flutter_application_tutorial/ecommerce/utils/dimensions.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/big_text.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("height is " + MediaQuery.of(context).size.height.toString());
    // print("width is " + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          // show header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Philippines",
                        color: AppColors.mainColor,
                        size: 30.0,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Tagaytay",
                            color: Colors.black,
                          ),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        size: Dimensions.iconSize24,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // show body
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
