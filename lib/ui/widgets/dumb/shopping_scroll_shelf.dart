import 'package:flutter/material.dart';
import 'package:shopping_app/ui/widgets/dumb/shopping_item.dart';

class ShoppingScrollShelf extends StatelessWidget {
  const ShoppingScrollShelf({
    Key? key,
    required this.showAvailable,
    required this.title,
    required this.number,
  }) : super(key: key);

  final bool showAvailable;
  final String title;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Color(0xff1A2031),
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
                children: <InlineSpan>[
                  TextSpan(text: title),
                  TextSpan(text: " "),
                  TextSpan(
                    text: number,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Show all",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ShoppingItem(
                title: "AKG N700NCM2 Wireless Headphones",
                price: "\$199.99",
                isAvailable: index.isEven,
                showAvailable: showAvailable,
              );
            },
          ),
        ),
      ],
    );
  }
}
