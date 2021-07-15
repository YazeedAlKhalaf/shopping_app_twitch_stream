import 'package:flutter/material.dart';

class ShoppingItem extends StatelessWidget {
  const ShoppingItem({
    Key? key,
    required this.title,
    required this.price,
    required this.showAvailable,
    required this.isAvailable,
  }) : super(key: key);

  final String title;
  final String price;
  final bool showAvailable;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Image.network(
                "https://i.ibb.co/R6764d4/pngwing-com-1.png",
                width: 150,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              color: Color(0xff1A2031),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          if (showAvailable)
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor:
                      isAvailable ? Color(0xff25B583) : Color(0xffBA4C50),
                  radius: 5,
                ),
                const SizedBox(width: 5),
                Text(
                  isAvailable ? "Available" : "Unavailable",
                  style: TextStyle(
                    color: isAvailable ? Color(0xff25B583) : Color(0xffBA4C50),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(
              color: Color(0xff949494),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
