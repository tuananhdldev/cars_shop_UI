import 'package:bag_shop_ui/constants.dart';
import 'package:bag_shop_ui/models/product_model.dart';
import 'package:flutter/material.dart';

import 'custom_rect_tween.dart';

class ItemCard extends StatelessWidget {
  var item = products[0];

  var press;



  ItemCard(this.item, this.press);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                color: item.color, borderRadius: BorderRadius.circular(16)),
            child: Hero(

                tag: "${item.id}",
                child: Image.asset(item.image)),
          )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              item.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${item.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
