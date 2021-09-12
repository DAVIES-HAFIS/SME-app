import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
