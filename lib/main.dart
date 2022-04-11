import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sellbookui/on_boarding/on_boarding.dart';
import 'package:sellbookui/screens/Request_page.dart';
import 'package:sellbookui/screens/Splash_Screen.dart';

import 'package:sellbookui/widgets/constants.dart';
import 'package:sellbookui/screens/main_screen.dart';
import 'package:sellbookui/screens/sell.dart';

import 'Welcome/welcome.dart';
import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CodeBook',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme.apply(
                  displayColor: kBlackColor,
                ),
          ),
        ),
        initialRoute: SplashScreen.id,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          WelcomeScreen.id: (context) => WelcomeScreen(),
          MainScreen.id: (context) => MainScreen(),
          OnBoarding.id: (context) => OnBoarding(),
          Login.id: (context) => Login(),
          Books.id: (context) => Books(),
          RequestPage.id: (context) => RequestPage(),
        });
  }
}
