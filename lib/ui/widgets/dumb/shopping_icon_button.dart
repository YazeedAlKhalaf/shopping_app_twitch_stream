import 'package:flutter/material.dart';

class ShoppingIconButton extends StatelessWidget {
  const ShoppingIconButton({
    Key? key,
    required this.icon,
    required this.isLight,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final bool isLight;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Material(
        color: isLight ? Colors.transparent : Color(0xffF2F2F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Color(0xffEFEFEF),
            width: 2,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          child: Icon(
            icon,
            color: Color(0xff8B8996),
          ),
        ),
      ),
    );
  }
}
