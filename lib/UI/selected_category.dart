import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/UI/details_page.dart';
import 'package:grocery_app/models/category.dart';
import 'package:grocery_app/widgets/colorhelper.dart';
import 'package:grocery_app/widgets/icon_helper.dart';
import 'package:grocery_app/widgets/iconfont.dart';
import 'package:grocery_app/widgets/main_appbar.dart';

class SelectedCategoryPage extends StatelessWidget {

  Category? selectedCategory;
  SelectedCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar:  MainAppBar(
        themeColor: AppColors.LightGreen,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      color: this.selectedCategory!.color,
                      child: Center(
                        child: Image.asset(
                          'assets/images/' +
                              '${this.selectedCategory!.icon}' +
                              '.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('${this.selectedCategory!.name}',
                   style: TextStyle(color: this.selectedCategory!.color,fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children:List.generate(this.selectedCategory!.subCategories!.length, 
                            (index) {
                              return GestureDetector(
                                onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(subCategory: this.selectedCategory!.subCategories![index])));
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          'assets/images/' + '${this.selectedCategory!.subCategories![index].imgName}' + '.png',
                                           fit: BoxFit.cover, width: 100, height: 100,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                       ' ${this.selectedCategory!.subCategories![index].name}',
                                        style: TextStyle(color: this.selectedCategory!.color),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                    
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
