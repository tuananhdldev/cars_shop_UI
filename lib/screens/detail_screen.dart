import 'package:bag_shop_ui/constants.dart';
import 'package:bag_shop_ui/models/product_model.dart';
import 'package:bag_shop_ui/screens/cart_counter.dart';
import 'package:bag_shop_ui/screens/custom_rect_tween.dart';
import 'package:bag_shop_ui/screens/hero_dialog_route.dart';
import 'package:bag_shop_ui/screens/popup_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: createAppBar(color: product.color,context: context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: kDefaultPadding,
                        right: kDefaultPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        )),
                    child: Column(
                      children: [
                        //color and size
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Color"),
                                Row(
                                  children: [
                                    ColorDot(
                                        color: Color(0xff356c95),
                                        isSelected: true),
                                    ColorDot(color: Color(0xfff8c078)),
                                    ColorDot(color: Color(0xffa29b9b))
                                  ],
                                )
                              ],
                            )),
                            Expanded(
                                child: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: kTextColor),
                                  children: [
                                    TextSpan(text: "Size\n"),
                                    TextSpan(
                                        text: "${product.size} cm",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold))
                                  ]),
                            ))
                          ],
                        ),
                        //end color and size
                        //description
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Text(
                            product.description,
                            style: TextStyle(height: 1.5),
                          ),
                        ),
                        //end description
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        //counter and fav button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartCounter(),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: Color(0xffff6464),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset("assets/icons/heart.svg"),
                            )
                          ],
                        ),
                        //end counter and fav button
               SizedBox(height: 50,),
                        //add to cart
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: kDefaultPadding),
                              height: 50,
                              width: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: product.color)
                              ),
                              child: IconButton(
                                icon: SvgPicture.asset("assets/icons/cart.svg",
                                color: product.color,),
                                onPressed: (){},
                              ),
                            ),
                            Expanded(child: SizedBox(
                              height: 50,
                              child: TextButton(
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                  backgroundColor: product.color,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                  )
                                ),
                                child: Text("Buy Now".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                                ),
                              ),
                            ))
                          ],
                        ),

                      ],
                    ),
                  ),
                  //title price image
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aristocratic Hand Bag",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          product.title,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        Row(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(text: "Price\n"),
                              TextSpan(
                                  text: "\$${product.price}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                            ])),
                            SizedBox(
                              width: kDefaultPadding,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap:()=> Navigator.push(context,
                                    HeroDialogRoute(builder:
                                        (context)=>PopupImage(product: product,)

                                    ),

                                ),
                                child: Hero(
                                  tag: "${product.id}",

                                  child: Image.asset(
                                product.image,
                                fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                  //end title price image
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  bool isSelected;

  ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
