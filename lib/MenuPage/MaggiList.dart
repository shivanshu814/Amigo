import 'package:phone_otp_ui/constants.dart';
import 'package:flutter/material.dart';

import '../../utility/bottomAppBar.dart';
import '../../utility/searchBox.dart';
import 'itemCardListMaggi.dart';

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
        scrolledUnderElevation: 20,
        shadowColor: kColorRed,
        title: const Text(
          'Amigo',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          textAlign: TextAlign.end,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(),
            ItemCardListMaggi(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        CurrentScreen: '',
      ),
    );
  }
}
