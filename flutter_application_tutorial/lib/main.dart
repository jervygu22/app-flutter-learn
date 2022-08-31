import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/ecommerce/ecommerce_screens.dart';
import 'package:flutter_application_tutorial/ecommerce/pages/food/popular_food_detail.dart';
// import 'package:flutter_application_tutorial/app/app_home_page.dart';
// import 'package:flutter_application_tutorial/ecommerce/home_page.dart';
// import 'package:flutter_application_tutorial/ecommerce/ecommerce_screens.dart';
// import 'package:flutter_application_tutorial/ecommerce/pages/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const PopularFoodDetail(), // MainFoodPage(),
    );
  }
}
