

import 'package:flutter/material.dart';
import 'package:sellbookui/components/rounded_button.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({ Key key }) : super(key: key);

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          AnimatedOpacity(
            opacity: _visible ? 1 : 0, 
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.orangeAccent,
            ),
          ),
          SizedBox(height: 40),
          RoundedButton(title: "Show/Hide", press: () {
            setState(() {
              _visible = !_visible;
            });
          })
        ],
      ),
    );
  }
}