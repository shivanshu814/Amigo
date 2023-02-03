import 'package:flutter/material.dart';
import 'package:phone_otp_ui/constants.dart';

import '../homePage/homePage.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key, required this.CurrentScreen}) : super(key: key);

  final String CurrentScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 65,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: kColorRed,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: kColorRed.withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_filled,
              color: CurrentScreen == 'HomePage' ? kColorYellow : Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homePage()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color:
                  CurrentScreen == 'favourites' ? kColorYellow : Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
