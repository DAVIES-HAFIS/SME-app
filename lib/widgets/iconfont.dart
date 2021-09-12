import 'package:flutter/material.dart';


class IconFont extends StatelessWidget {
  final Color color;
  final double size;
  final String iconName;

  IconFont({required this.color,required this.iconName,required this.size});
  @override
  Widget build(BuildContext context) {
    return Text(this.iconName,
      style:TextStyle(
          color: this.color,fontSize: this.size, fontFamily: 'DaviesFonts'
      ),
    );
  }
}

