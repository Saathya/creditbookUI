import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sellbookui/components/rounded_button.dart';
import 'package:sellbookui/components/rounded_input.dart';
import 'package:sellbookui/components/rounded_password.dart';
import 'package:sellbookui/screens/components/Regsiter_phoeumber.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
    @required this.isLogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // ignore: unused_field
  bool _isLoading = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

//before this code import Http and shared Preferences package from dart package and import in pubsec.yaml
  signIn(String email, String pass) async {
    var url = Uri.https(
        'http://13.235.90.165:8085/creditbook',
        '/api/v1/loginWithEmail',
        {'q': '{http}'}); //Url of login withEmail and pass
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"email": email, "password": pass};
    var jsonResponse;
    var res = await http.post(url, body: body);
    //Need to check api status
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      print("Response status : ${res.statusCode}");

      print("Response status : ${res.body}");
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });

        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => RegisterWithPhoneNumber()),
            (Route<dynamic> route) => false);
      } else {
        setState(() {
          _isLoading = false;
        });
        print("Response status : ${res.body}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.isLogin ? 1.0 : 0.0,
      duration: widget.animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            width: widget.size.width,
            height: widget.defaultLoginSize,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '  Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Image.asset(
                  'assets/images/Book.png',
                  width: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedInput(
                  icon: Icons.face,
                  hint: 'Name',
                ),
                RoundedInput(
                  icon: Icons.mail,
                  hint: 'Username',
                ),
                RoundedPasswordInput(hint: 'Password'),
                SizedBox(height: 10),
                RoundedButton(
                  title: "SIGN IN",
                  color: kSecondaryColor,
                  textColor: Colors.white,
                  press: () {
                    _emailController.text == "" || _passController.text == ""

                        // ignore: unnecessary_statements
                        ? null
                        // ignore: unnecessary_statements
                        : () {
                            setState(() {
                              _isLoading = true;
                            });
                            signIn(_emailController.text, _passController.text);
                          };
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
