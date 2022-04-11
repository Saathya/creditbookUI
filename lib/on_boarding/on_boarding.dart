import 'package:flutter/material.dart';
import 'package:sellbookui/Welcome/welcome.dart';

import 'package:sellbookui/widgets/constants.dart';

import 'on_borading mode.dart';

class OnBoarding extends StatefulWidget {
  static const String id = 'onboarding';
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController _pageController;
  List<OnboardingModel> screens = <OnboardingModel>[
    OnboardingModel(
      img: 'assets/images/hero-1.png',
      text: "Boost your Knowledge",
      desc: "Outreach to many Books to improve your Knowledge",
      bg: Colors.white,
      button: kSecondaryColor,
    ),
    OnboardingModel(
      img: 'assets/images/hero-2.png',
      text: "Give the best solution",
      desc: "We will give best solution for your Competitive Problems",
      bg: kSecondaryColor,
      button: Colors.white,
    ),
    OnboardingModel(
      img: 'assets/images/hero-3.png',
      text: "Reach the target",
      desc: "With our help, it will be easier to achieve your goals",
      bg: Colors.white,
      button: kSecondaryColor,
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: currentIndex % 2 == 0 ? kwhite : kSecondaryColor,
      appBar: AppBar(
        backgroundColor: currentIndex % 2 == 0 ? kwhite : kSecondaryColor,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  color: currentIndex % 2 == 0 ? kblack : kwhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(screens[index].img),
                  Container(
                    height: 100.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 6.0),
                                width: currentIndex == index ? 20 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? kSecondaryColor
                                      : kSecondaryColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    screens[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: index % 2 == 0 ? kblack : kwhite,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    screens[index].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      color: index % 2 == 0 ? kblack : kwhite,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if (index == screens.length - 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()));
                      }

                      _pageController.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.slowMiddle,
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 33.0, vertical: 10),
                      decoration: BoxDecoration(
                          color: index % 2 == 0 ? kSecondaryColor : kwhite,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: index % 2 == 0 ? kwhite : kSecondaryColor),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: index % 2 == 0 ? kwhite : kSecondaryColor,
                        )
                      ]),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
