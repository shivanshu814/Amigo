import 'package:flutter/material.dart';
import 'constants.dart';

class MaggiList extends StatefulWidget {
  const MaggiList({Key? key}) : super(key: key);

  @override
  State<MaggiList> createState() => _MaggiListState();
}

class _MaggiListState extends State<MaggiList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
        ),
        scrolledUnderElevation: 20,
        shadowColor: kColorRed,
        title: const Text(
          'Amigo',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          textAlign: TextAlign.end,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReusableListFood(
                foodName: 'Frappe',
                countOfItem: 0,
              ),
              const Seperator(),
              ReusableListFood(
                foodName: 'Maggi double masala',
                countOfItem: 0,
              ),
              const Seperator(),
              ReusableListFood(
                foodName: 'Maggi peri peri',
                countOfItem: 0,
              ),
              const Seperator(),
              ReusableListFood(
                foodName: 'Maggi double butter masala',
                countOfItem: 0,
              ),
              const Seperator(),
              ReusableListFood(
                foodName: 'Plain Maggi',
                countOfItem: 0,
              ),
              const Seperator(),
              ReusableListFood(
                foodName: 'Maggi Masala',
                countOfItem: 0,
              ),
              const Seperator(),
            ],
          ),
        ),
      ),
    );
  }
}
