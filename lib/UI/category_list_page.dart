import 'package:flutter/material.dart';
import 'package:grocery_app/UI/selected_category.dart';
import 'package:grocery_app/models/category.dart';
import 'package:grocery_app/widgets/colorhelper.dart';
import 'package:grocery_app/widgets/icon_helper.dart';
import 'package:grocery_app/widgets/iconfont.dart';
import 'package:grocery_app/widgets/main_appbar.dart';
import 'package:grocery_app/widgets/utils.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: MainAppBar(
        themeColor: AppColors.LightGreen,
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    'Select A Dish From Our Menu List',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedCategoryPage(selectedCategory: this.categories[index],)));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 150,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/images/' +
                                        '${categories[index].imgName}' +
                                        '.png',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent,
                                        ]),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        color: Colors.green,
                                        child: Center(
                                          child: Image.asset(
                                            'assets/images/' +
                                                '${categories[index].icon}' +
                                                '.png',
                                            color: AppColors.White,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '${categories[index].name}',
                                      style: TextStyle(
                                          color: AppColors.White, fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.white30, boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.green,
                    offset: Offset.zero,
                  ),
                ]),
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Material(
                          color: Colors.green.shade200,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.green,
                            ),
                            splashColor: Colors.white,
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.green.shade200,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.green,
                            ),
                            splashColor: Colors.white,
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.green.shade200,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.call,
                              color: Colors.green,
                            ),
                            splashColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
