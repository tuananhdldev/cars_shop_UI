import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPadding = 20.0;

createAppBar({color: Colors.white, context: BuildContext}) {
  return AppBar(
    backgroundColor: color,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg",
        color: color == Colors.white? kTextColor: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: color == Colors.white? kTextColor: Colors.white,
          )),
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: color == Colors.white? kTextColor: Colors.white,
          )),
      SizedBox(
        width: kDefaultPadding / 2,
      )
    ],
  );
}
