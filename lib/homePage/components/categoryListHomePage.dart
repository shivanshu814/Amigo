import 'package:flutter/material.dart';

import '../../../utility/categoryItem.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Restaurants",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Option 2",
            press: () {},
          ),
          CategoryItem(
            title: "Option 3",
            press: () {},
          ),
          CategoryItem(
            title: "Option 4",
            press: () {},
          ),
        ],
      ),
    );
  }
}
