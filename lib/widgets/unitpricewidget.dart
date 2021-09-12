import 'package:flutter/material.dart';

import 'colorhelper.dart';


class UnitPrice extends StatefulWidget {

  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  @override
  _UnitPriceState createState() => _UnitPriceState();
}

class _UnitPriceState extends State<UnitPrice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset.zero,
                    color: Colors.black.withOpacity(0.1))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: widget.amount< 20 ?(){
                  setState(() {
                    widget.amount++;
                    widget.cost = widget.price * widget.amount;
                  });
                } : null,
                child: Icon(
                  Icons.add_circle,
                  size: 50,
                  color: AppColors.LightGreen,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: widget.amount.toString(),
                          style: TextStyle(fontSize: 40)),
                      TextSpan(
                          text: 'portion(s)',
                          style: TextStyle(fontSize: 20)),
                    ]),
                  ),
                ),
              ),
              GestureDetector(
                onTap: widget.amount > 0 ?(){
                  setState(() {
                    widget.amount--;
                    widget.cost = widget.price * widget.amount;
                  });
                } : null,
                child: Icon(
                  Icons.remove_circle,
                  size: 50,
                  color: AppColors.BlackLight,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Price: ',
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                      text: '\$${widget.price} / portion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Text("Total: \$${widget.cost}", style: TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ],

    );
  }
}
