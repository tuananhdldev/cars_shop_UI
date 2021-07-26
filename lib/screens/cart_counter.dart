import 'package:bag_shop_ui/constants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(icon: Icons.remove,
        press: (){
          if (numOfItems>1){
            setState(() {
              numOfItems--;
            });
          }
        }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
          child: Text(numOfItems.toString().padLeft(2,"0")),
        ),
        buildOutlineButton(icon: Icons.add,
            press: (){

                setState(() {
                  numOfItems++;
                });

            }
        )

      ],
    );
  }

   buildOutlineButton({required IconData icon,  press})
  {
    return OutlinedButton(

      style: OutlinedButton.styleFrom(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        )
      ),
      onPressed: press,
      child: Center(child: Icon(icon)),
    );
  }


}
