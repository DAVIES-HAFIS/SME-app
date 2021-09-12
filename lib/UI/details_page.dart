import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/themebutton.dart';
import 'package:grocery_app/widgets/unitpricewidget.dart';
import '../widgets/categorypartlist.dart';
import 'package:grocery_app/models/category.dart';
import 'package:grocery_app/models/category_subsection.dart';
import 'package:grocery_app/widgets/colorhelper.dart';
import 'package:grocery_app/widgets/main_appbar.dart';
import 'package:grocery_app/widgets/utils.dart';
import '../models/subcategory.dart';

class DetailsPage extends StatefulWidget {


  SubCategory? subCategory;
  DetailsPage({
    this.subCategory,
  });

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/' +
                              '${widget.subCategory!.imgName}' +
                              '.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipOval(
                              child: Container(
                                color: Colors.green,
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/' +
                                        '${widget.subCategory!.icon}' +
                                        '.png',
                                    color: AppColors.White,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'All sorts of Stake',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: this.widget.subCategory!.color,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  "\$500.00",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 100,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.Green,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset.zero,
                            ),
                          ]),
                      child: Row(children: [
                        Text(
                          '3',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.shopping_cart),
                      ]),
                    ),
                  ),
                  MainAppBar(
                    themeColor: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CategoryPartList(
                      subCategory: widget.subCategory
                    ),
                    Column(
                      children: [
                        UnitPrice(),
                        ThemeButton(
                          label:'Add to Cart',
                          icon: Icon(Icons.add_shopping_cart, color: Colors.white,),
                          onClick: (){},
                          color: AppColors.LightGreen,
                          highlight: AppColors.DarkGreen,
                        ),
                        ThemeButton(
                          label:'Delivery Location',
                          icon: Icon(Icons.location_on_outlined, color: Colors.white,),
                          onClick: (){},
                          color: AppColors.Amber,
                          highlight: AppColors.DarkGreen,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
