
import 'package:flutter/material.dart';
import 'package:sellbookui/widgets/constants.dart';

class Books extends StatelessWidget {
   static const String id = 'book-screen';
  
  const Books({ Key key }) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Sell/Buy /Rent Screen',style: textStyle,),
      ),
    );
  }
}