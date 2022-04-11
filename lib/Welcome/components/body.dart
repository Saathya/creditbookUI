import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sellbookui/Welcome/components/background.dart';
import 'package:sellbookui/components/rounded_button.dart';
import 'package:sellbookui/screens/components/Regsiter_phoeumber.dart';

import '../../widgets/constants.dart';
import '../../screens/login.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: size.height * 0.02),
          Text(
            "    WELCOME TO CREDITBOOK",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: size.height * 0.05),
          SvgPicture.asset(
            "assets/images/chat.svg",
            height: size.height * 0.38,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            title: "SIGN UP WITH EMAIL",
            color: kSecondaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.pushNamed(context, Login.id);
            },
          ),
          SizedBox(height: size.height * 0.02),
          RoundedButton(
            title: "SIGN IN WITH GOOGLE",
            color: Colors.grey.shade400,
            textColor: kSecondaryColor,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterWithPhoneNumber();
                  },
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.02),
          RoundedButton(
            title: "LOGIN WITH PHONE NUMBER",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterWithPhoneNumber();
                  },
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
