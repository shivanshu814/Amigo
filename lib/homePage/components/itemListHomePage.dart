import 'package:flutter/material.dart';
import '../../MenuPage/MaggiList.dart';
import '../../../utility/itemCard.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            image: "assets/icons/Maggi_logo_cube.svg",
            title: "Maggi Hotspot",
            shopName: "Love the maggi",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MaggiList()));
            },
          ),
          ItemCard(
            image: "assets/icons/burger_beer.svg",
            title: "Quench",
            shopName: "Quench your hunger",
            press: () {
              //TODO: return to M block screen
            },
          ),
          ItemCard(
            image: "assets/icons/chinese_noodles.svg",
            title: "Kathi Junction",
            shopName: "Bring on your hunger",
            press: () {
              //TODO: return to Kathi screen
            },
          ),
          ItemCard(
            image: "assets/icons/chinese_noodles.svg",
            title: "M block Restaurant",
            shopName: "Non-Veg available",
            press: () {
              //TODO: return to M block screen
            },
          ),
          ItemCard(
            image: "assets/icons/chinese_noodles.svg",
            title: "South Indian",
            shopName: "southern dishes",
            press: () {
              //TODO: return to M block screen
            },
          ),
          ItemCard(
            image: "assets/icons/chinese_noodles.svg",
            title: "Chill Wheel",
            shopName: "Ice cream has no season",
            press: () {
              //TODO: return to M block screen
            },
          )
        ],
      ),
    );
  }
}
