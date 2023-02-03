import 'package:flutter/material.dart';

import '../../utility/itemCard.dart';

class ItemCardListMaggi extends StatefulWidget {
  const ItemCardListMaggi({Key? key}) : super(key: key);

  @override
  State<ItemCardListMaggi> createState() => _ItemCardListMaggiState();
}

class _ItemCardListMaggiState extends State<ItemCardListMaggi> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            image: "assets/icons/coffee-maker-colour.svg",
            title: "Drinks",
            shopName: "xyz",
            press: () {},
          ),
          ItemCard(
            image: "assets/icons/Maggi_logo_cube.svg",
            title: "Maggi",
            shopName: "xyz",
            press: () {},
          ),
          ItemCard(
            image: "assets/icons/sandwich.svg",
            title: "Sandwiches",
            shopName: "xyz",
            press: () {},
          ),
          ItemCard(
            image: "assets/icons/chinese_noodles.svg",
            title: "Pastries",
            shopName: "xyz",
            press: () {},
          ),
          ItemCard(
            image: "assets/icons/chinese_noodles.svg",
            title: "Puffs",
            shopName: "xyz",
            press: () {},
          ),
          ItemCard(
            image: "assets/icons/chinese_noodles.svg",
            title: "Pastas",
            shopName: "xyz",
            press: () {},
          )
        ],
      ),
    );
  }
}
