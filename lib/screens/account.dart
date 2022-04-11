import 'package:flutter/material.dart';
import 'package:sellbookui/widgets/constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Account Screen',style: textStyle,),
      ),
    );
  }
}
