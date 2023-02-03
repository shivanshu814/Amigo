import 'package:flutter/material.dart';

Color kColorYellow = const Color(0xffffda2a);
Color kColorRed = const Color(0xffcf2c4e);

class ReusableListFood extends StatefulWidget {
  ReusableListFood(
      {Key? key, required this.countOfItem, required this.foodName})
      : super(key: key);
  int countOfItem;
  final String foodName;
  @override
  State<ReusableListFood> createState() => _ReusableListFoodState();
}

class _ReusableListFoodState extends State<ReusableListFood> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${widget.foodName}',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.countOfItem != 0) {
                        widget.countOfItem = widget.countOfItem - 1;
                      }
                    });
                  },
                  icon: Icon(Icons.remove_circle)),
              Text('${widget.countOfItem}'),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      widget.countOfItem = widget.countOfItem + 1;
                    },
                  );
                },
                icon: Icon(Icons.add_circle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Seperator extends StatelessWidget {
  const Seperator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.5,
      width: MediaQuery.of(context).size.width * 0.9,
      color: Colors.grey,
    );
  }
}
