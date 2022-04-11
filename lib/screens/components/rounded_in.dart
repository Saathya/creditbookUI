import 'package:flutter/material.dart';
import 'package:sellbookui/screens/components/input_cont.dart';
import 'package:sellbookui/widgets/constants.dart';

class RoundedIn extends StatelessWidget {
  const RoundedIn({
    Key key,
    @required this.icon,
    @required this.hint,
  }) : super(key: key);

  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainers(
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kSecondaryColor,
            ),
            hintText: hint,
            border: InputBorder.none),
      ),
    );
  }
}
