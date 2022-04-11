import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sellbookui/on_boarding/on_boarding.dart';
import 'package:sellbookui/widgets/constants.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashscreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(
        seconds: 3,
      ),
      () {
       
       
       Navigator.pushNamed(context, OnBoarding.id);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Book.png",
              width: 180,
            ),
            Text(
              'CREDIT BOOK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Buy/Sell/Rent books in affordable price',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
