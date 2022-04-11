import 'package:flutter/material.dart';
import 'package:sellbookui/components/rounded_button.dart';
import 'package:sellbookui/screens/main_screen.dart';

import '../../widgets/constants.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String nameBooks = "";
  var listIem = [
    "Selected Items",
    "12(science)",
    "12(Humanities)",
    "12(commerce)",
    "B.tech",
    "Pol.Science(Hons.)",
    "B.A",
    "B.com"
  ];
  var listItem = [
    "Selected Items",
    "12(Humanities)",
    "12(commerce)",
    "B.tech",
    "Pol.Science(Hons.)",
    "B.A",
    "B.com"
  ];
  var _currentItemSelected = "Selected Items";
  var _currentItemSelected1 = "Selected Items";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children:[
         Positioned(
          top: 50,
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
          top: -90,
          left: -50,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kSecondaryColor,
            ),
          ),
        ),
        
      
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.002),
           Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: "What are you \looking "),
                          TextSpan(
                              text: "for?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kSecondaryColor
                              ))
                        ],
                      ),
                    ),
                  ),
            SizedBox(height: size.height * 0.001),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/illustration-3.png',
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
              
                decoration: BoxDecoration(
                    border: Border.all(color: kSecondaryColor, width: 5,),
                    borderRadius: BorderRadius.circular(18)),
                child: DropdownButton(
                  iconEnabledColor: kSecondaryColor,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 60,
                  underline: SizedBox(),
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  items: listIem.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          dropDownStringItem,
                        ),
                      ),
                      value: dropDownStringItem,
                    );
                  }).toList(),
                  onChanged: (String newValueSelected) {
                    _ondropDownSelectedItem(newValueSelected);
                    setState(() {
                      this._currentItemSelected = newValueSelected;
                    });
                  },
                  value: _currentItemSelected,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: kSecondaryColor, width: 5),
                  borderRadius: BorderRadius.circular(19)),
              child: DropdownButton(
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                icon: Icon(Icons.arrow_drop_down),
                iconSize:60,
                underline: SizedBox(),
                items: listItem.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(dropDownStringItem),
                    ),
                    value: dropDownStringItem,
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  setState(() {
                    this._currentItemSelected1 = newValueSelected;
                  });
                },
                value: _currentItemSelected1,
                iconEnabledColor: kSecondaryColor,
              ),
            ),
            SizedBox(height: size.height * 0.036),
            RoundedButton(
              title: "SUBMIT",
              color: kSecondaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.pushNamed(context, MainScreen.id);
              },
            ),
          ],
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        focusColor: kSecondaryColor,
        onPressed: () {
          Navigator.pushNamed(context, MainScreen.id);
        },
        child: Text('SKIP'),
      ),
    );
  }

  void _ondropDownSelectedItem(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
