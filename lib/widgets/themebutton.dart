import 'package:flutter/material.dart';

import 'colorhelper.dart';

// ignore: must_be_immutable
class ThemeButton extends StatelessWidget {

  String? label;
  Function? onClick;
  Color? color;
  Color? highlight;
  Widget? icon;
  Color? borderColor;
  Color? labelColor;
  double? borderWidth;

  ThemeButton({
    this.color,this.icon,this.label, this.borderWidth, this.borderColor, this.highlight,this.labelColor, this.onClick
});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (){},
        splashColor:this.highlight,
        highlightColor:this.highlight,
        child: TextButton(
          onPressed: (){
               this.onClick!();
          },
          style: TextButton.styleFrom(
            backgroundColor:this.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: this.icon,
                ),
                SizedBox(width: 60,),
                Center(
                  child: Text(
                   ' ${this.label}',style:
                  TextStyle(
                    color: AppColors.White,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
