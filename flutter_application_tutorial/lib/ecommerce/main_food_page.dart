import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/ecommerce/ecommerce_screens.dart';
import 'package:flutter_application_tutorial/ecommerce/food_page_body.dart';
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
              margin: EdgeInsets.only(top: 45.0, bottom: 15.0),
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
                      width: 45.0,
                      height: 45.0,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // show body
          FoodPageBody(),
        ],
      ),
    );
  }
}
