import 'package:flutter/material.dart';
import 'package:sellbookui/components/rounded_button.dart';
import 'package:sellbookui/components/rounded_input.dart';
import 'package:sellbookui/widgets/constants.dart';

import 'components/rounded_in.dart';

class RequestPage extends StatefulWidget {
  static const String id = 'requestpage';
  const RequestPage({Key key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double defaultLoginSize = size.height - (size.height * 0.020);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline4,
                    children: [
                      TextSpan(text: "Request to your "),
                      TextSpan(
                          text: "Books!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/illustration-3.png',
                height: 220,
              ),
              SizedBox(
                height: 10,
              ),
              RoundedInput(
                icon: Icons.face,
                hint: 'Name',
              ),
              RoundedIn(
                icon: Icons.message,
                hint: 'Message',
              ),
              SizedBox(height: 10),
              RoundedButton(
                title: "Request Us",
                color: kSecondaryColor,
                textColor: Colors.white,
                press: () {},
              ),
            ],
          )),
    ));
  }
}
