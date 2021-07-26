import 'package:bag_shop_ui/constants.dart';
import 'package:bag_shop_ui/models/product_model.dart';
import 'package:bag_shop_ui/screens/custom_rect_tween.dart';
import 'package:flutter/material.dart';

class PopupImage extends StatelessWidget {

  Product product ;

   PopupImage({Key? key, required this.product}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: GestureDetector(
        onTap: ()=>Navigator.pop(context),
        child: Container(
          color: product.color,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Expanded(
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(product.image
                  ,fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
