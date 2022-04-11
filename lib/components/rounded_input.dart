import 'package:flutter/material.dart';
import '../widgets/constants.dart';
import 'input_container.dart';

class RoundedInput extends StatefulWidget {
  const RoundedInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.maxline,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final int maxline;

  @override
  State<RoundedInput> createState() => _RoundedInputState();
}

class _RoundedInputState extends State<RoundedInput> {
 TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child: TextField(
        controller: _emailController,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              widget.icon,
              color: kSecondaryColor,
            ),
            hintText: widget.hint,
            border: InputBorder.none),
      ),
    );
  }
}
