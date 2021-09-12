import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colorhelper.dart';
import 'icon_helper.dart';
import 'iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color? themeColor;

  MainAppBar({this.themeColor,});

  @override
  _MainAppBarState createState() => _MainAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(80);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Row(
        children: [
          Text(
            'speedy delivery...............  ',
            style: TextStyle(color: widget.themeColor, fontSize: 18),
          ),
          IconFont(
              color: AppColors.BlackLight,
              iconName: IconFontsHelper.bike,
              size: 40),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ClipOval(
            child: Container(
              color: Colors.white,
              child: Center(
                  child: Icon(
                    Icons.perm_identity_outlined,
                    size: 30,
                    color: Colors.green,
                  )),
            ),
          ),
        ),
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            color: widget.themeColor,
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
    );
  }
}
