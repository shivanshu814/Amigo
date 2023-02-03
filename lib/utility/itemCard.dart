import 'package:flutter/material.dart';
import 'package:phone_otp_ui/constants.dart';
import 'package:flutter_svg/svg.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, image;
  final Function press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: kColorRed,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: kColorRed.withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => press(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kColorYellow.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    image,
                    width: size.width * 0.18,
                    // size.width * 0.18 means it use 18% of total width
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  shopName,
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
