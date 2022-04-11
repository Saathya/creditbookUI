

import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({ Key key }) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MY Books Screen',style: textStyle,),
      ),
    );
  }
}