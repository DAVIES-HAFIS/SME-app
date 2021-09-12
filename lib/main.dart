import 'package:flutter/material.dart';
import 'package:grocery_app/UI/category_list_page.dart';
import 'package:grocery_app/UI/details_page.dart';
import 'package:grocery_app/UI/landing_page.dart';
import 'package:grocery_app/UI/selected_category.dart';
import 'models/subcategory.dart';
import 'package:grocery_app/widgets/utils.dart';
import 'UI/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(duration: 3,goToPage: LandingPage(),),
      // SelectedCategoryPage(selectedCategory: Utils.getMockedCategories()[0],),

      //


    );
  }
}
