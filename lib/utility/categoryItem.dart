import 'package:flutter/material.dart';
import 'package:phone_otp_ui/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({
    Key? key,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: isActive
                  ? TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(fontSize: 16),
            ),
            if (isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 50,
                decoration: BoxDecoration(
                  color: kColorYellow,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
