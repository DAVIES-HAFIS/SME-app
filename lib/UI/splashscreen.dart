
import 'package:flutter/material.dart';
import '../widgets/colorhelper.dart';
import 'package:grocery_app/widgets/icon_helper.dart';
import 'package:grocery_app/widgets/iconfont.dart';

class SplashScreen extends StatefulWidget {
  final int duration;
  final Widget goToPage;

  SplashScreen({required this.duration,required this.goToPage});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.widget.duration),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => this.widget.goToPage));
    });
    return Scaffold(
      body: Container(
        color:   AppColors.Green,
        child: Center(
          child: IconFont(
            color: AppColors.White,
            size: 100,
            iconName: IconFontsHelper.peaceout,),
        ),
      ),
    );

  }
}
