import 'package:flutter/material.dart';
// import 'package:flutter_application_tutorial/app/app_home_page.dart';
// import 'package:flutter_application_tutorial/ecommerce/home_page.dart';
import 'package:flutter_application_tutorial/ecommerce/ecommerce_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MainFoodPage(),
    );
  }
}
