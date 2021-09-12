
import 'package:flutter/material.dart';
import 'package:grocery_app/UI/category_list_page.dart';
import '../widgets/colorhelper.dart';
import 'package:grocery_app/widgets/icon_helper.dart';
import 'package:grocery_app/widgets/iconfont.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.Black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset('assets/images/food.jpg', fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        height: 180,
                        width: 180,
                        color: AppColors.LightGreen,
                        child: Center(
                            child: IconFont(
                                color: AppColors.White,
                                iconName: IconFontsHelper.heartbeat,
                                size: 130)),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Center(
                    child: Text(
                      'Welcome To Foodies',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        color: AppColors.White,
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Text(
                    'Register or Sign-In \n Explore our Continental Cuisine and More.......',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.White,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: (){},
                      splashColor:AppColors.AmberLight,
                      highlightColor: AppColors.Amber,
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryListPage()));
                          },
                        style: TextButton.styleFrom(
                          backgroundColor:AppColors.LightGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Sign-Up',style:
                              TextStyle(
                                color: AppColors.White,
                              ),),
                          ),
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Material(
                        color: Colors.transparent,

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: InkWell(
                            onTap: (){},
                            splashColor:AppColors.AmberLight,
                            highlightColor: AppColors.Amber,
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              child: Center(child: Text('Sign-In',
                                style: TextStyle(
                                fontSize: 16,
                                  color: AppColors.Green,
                                  fontWeight: FontWeight.bold,
                              ),
                              ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: AppColors.Green,
                                  width: 4,
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                   ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
