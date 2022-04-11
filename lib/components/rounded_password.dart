import 'package:flutter/material.dart';

import '../widgets/constants.dart';
import 'input_container.dart';

class RoundedPasswordInput extends StatefulWidget {
  const RoundedPasswordInput({
    Key key,
    @required this.hint,
  }) : super(key: key);

  final String hint;

  @override
  State<RoundedPasswordInput> createState() => _RoundedPasswordInputState();
}

class _RoundedPasswordInputState extends State<RoundedPasswordInput> {
  TextEditingController _passController = TextEditingController();
  @override 

  Widget build(BuildContext context) {
    return InputContainer(
      child: TextField(
        controller: _passController,
        cursorColor: kPrimaryColor,
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: kSecondaryColor,
            ),
            hintText: widget.hint,
            border: InputBorder.none),
      ),
    );
  }
}
