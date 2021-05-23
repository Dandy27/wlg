import 'package:flutter/material.dart';

import '../constants.dart';

class RoundeButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundeButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.75,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
            primary: color,
          ),
          onPressed: press,
          child: Text(text, style: TextStyle(color: textColor),)),
    );
  }
}
