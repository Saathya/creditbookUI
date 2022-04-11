import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sellbookui/widgets/constants.dart';
import 'package:sellbookui/screens/components/login_form.dart';

class Login extends StatefulWidget {
  static const String id = 'login-screen';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  bool isLogin = true;
  Animation<double> containerSize;
  AnimationController animationController;
  Duration animationDuration = Duration(milliseconds: 270);

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    animationController =
        AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    containerSize = Tween<double>(
            begin: size.height * 0.1, end: defaultRegisterSize)
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.linear));
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 80,
            right: -50,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kSecondaryColor,
              ),
            ),
          ),
          Positioned(
            top: -60,
            left: -60,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kSecondaryColor,
              ),
            ),
          ),

          /// Login Form
          LoginForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultLoginSize: defaultLoginSize),
        ],
      ),
    );
  }
}
























          // CancelButton(
          //   animationController: animationController,
          //   animationDuration: animationDuration,
          //   size: size,
          //   isLogin: isLogin,
          //   tapEvent: isLogin
          //       ? null
          //       : () {
          //           animationController.reverse();
          //           setState(() {
          //             isLogin = !isLogin;
          //           });
          //         },
          // ),

          //Login Form

        

          //Register Container is here......................

          //       AnimatedBuilder(
          //         builder: (context, child) {
          //           if (viewInset == 0 && isLogin) {
          //             return buildRegisterContainer();
          //           } else if (!isLogin) {
          //             return buildRegisterContainer();
          //           }
          //           return Container();
          //         },
          //         animation: animationController,
          //       ),
          //       RegisterForm(
          //           isLogin: isLogin,
          //           animationDuration: animationDuration,
          //           size: size,
          //           defaultLoginSize: defaultLoginSize),
          //     ],
          //   ));
          // }

          // Widget buildRegisterContainer() {
          //   return Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Container(
          //         width: double.infinity,
          //         height: containerSize.value,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(100),
          //             topRight: Radius.circular(100),
          //           ),
          //           color: Colors.grey.shade300,
          //         ),
          //         alignment: Alignment.center,
          //         child: GestureDetector(
          //           onTap: !isLogin
          //               ? null
          //               : () {
          //                   animationController.forward();
          //                   setState(() {
          //                     isLogin = !isLogin;
          //                   });
          //                 },
          //           child: isLogin
          //               ? Text(
          //                   "Don't have an account? Sign Up",
          //                   style: TextStyle(color: kSecondaryColor, fontSize: 17),
          //                 )
          //               : null,
       