import 'package:phone_otp_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utility/bottomAppBar.dart';
import '../../utility/searchBox.dart';
import 'components/categoryListHomePage.dart';
import 'components/discountCard.dart';
import 'components/itemListHomePage.dart';
import 'package:flutter_svg/svg.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcf2c4e),
        scrolledUnderElevation: 15,
        shadowColor: kColorRed,
        title: const Text(
          'Amigo',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          textAlign: TextAlign.end,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: const Icon(
                Icons.logout,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'phone');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchBox(),
            CategoryList(),
            ItemList(),
            DiscountCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        CurrentScreen: 'HomePage',
      ),
    );
  }
}

AppBar detailsAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/share.svg"),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/more.svg"),
        onPressed: () {},
      ),
    ],
  );
}
