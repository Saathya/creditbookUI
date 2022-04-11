


import 'package:flutter/material.dart';
import 'package:sellbookui/widgets/constants.dart';

class InputContainers extends StatelessWidget {
  const InputContainers({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      height: size.height*0.2,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(30),
        color: kSecondaryColor.withAlpha(30),
      ),
      child: child,
    );
  }
}