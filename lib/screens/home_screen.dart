import 'package:bag_shop_ui/constants.dart';
import 'package:bag_shop_ui/models/product_model.dart';
import 'package:bag_shop_ui/screens/categories.dart';
import 'package:bag_shop_ui/screens/detail_screen.dart';
import 'package:bag_shop_ui/screens/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text("Best Sells Cars",
              style: Theme.of(context).
              textTheme.
              headline5?.
              copyWith(fontWeight: FontWeight.bold),),
          ),
            Categories(),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: GridView.builder(
                    itemCount: cars.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75
                ),
                    itemBuilder: (context,index)=>ItemCard(
                  cars[index],
                    (){
                    print("go details");
                       Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context)=>DetailsScreen(product: cars[index])
                        )
                       );
                    }
                )),
              ),
            ),

        ],
      ),


    );
  }
}
