import 'package:flutter/material.dart';
import 'package:phone_otp_ui/constants.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  // final ValueChanged<String> onChanged;
  const SearchBox({
    Key? key,
    // required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        // onChanged: onChanged,
        onChanged: (hello) {},
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search Here",
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),
    );
  }
}
