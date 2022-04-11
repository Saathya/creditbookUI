import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.title,
    this.press,
    this.color = kSecondaryColor,
    this.textColor,
    this.verticalPadding = 16,
    this.horizontalPadding = 30,
  }) : super(key: key);

  final String title;

  final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
        onTap: press,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: size.width * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: color,
          ),
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(color: textColor, fontSize: 15),
          ),
        ));
  }
}
