import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui_designs/screens/atro/design_size.dart';

bool isValidEmail(String email) =>
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

class AtroLoginScreen extends StatefulWidget {
  @override
  _AtroLoginScreenState createState() => _AtroLoginScreenState();
}

class _AtroLoginScreenState extends State<AtroLoginScreen> {
  bool _emailValid = false;
  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    var mqData = MediaQuery.of(context);
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'assets/atro/images/atro_login_background.png'))),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: mqData.padding.top,
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: getRelativeHeight(25, mqData),
                          fontFamily: 'Montserrat',
                          color: Color(0xFFFFFFFF)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
              SizedBox(
                height: getRelativeHeight(203.57, mqData),
              ),
              Container(
                height: getRelativeHeight(105.36, mqData),
                child: Image.asset(
                  'assets/atro/images/ui-logo.png',
                  width: getRelativeWidth(294, mqData),
                  height: getRelativeHeight(95, mqData),
                ),
              ),
              SizedBox(
                height: getRelativeHeight(301, mqData),
              ),
              ClipRect(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 44.119, sigmaY: 44.119),
                child: Container(
                  height: getRelativeHeight(110, mqData),
                  width: getRelativeWidth(630, mqData),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(20, 15, 38, 0.648579),
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(
                      left: getRelativeWidth(50, mqData),
                      right: getRelativeWidth(10, mqData)),
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        _emailValid = isValidEmail(txt);
                      });
                    },
                    style: TextStyle(
                        fontSize: getRelativeHeight(27, mqData),
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Montserrat'),
                    cursorWidth: getRelativeWidth(2, mqData),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your Email',
                        hintStyle: TextStyle(
                            fontSize: getRelativeHeight(27, mqData),
                            color: Color.fromRGBO(255, 255, 255, 0.398041),
                            fontFamily: 'Montserrat'),
                        suffixIcon: Container(
                          margin: EdgeInsets.all(getRelativeHeight(20, mqData)),
                          alignment: Alignment.center,
                          height: getRelativeHeight(50, mqData),
                          width: getRelativeWidth(50, mqData),
                          decoration: BoxDecoration(
                              color: _emailValid
                                  ? CupertinoColors.activeGreen
                                  : CupertinoColors.inactiveGray,
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(
                            Icons.check,
                            size: getRelativeHeight(30, mqData),
                            color: Color(0xFFFFFFFF),
                          ),
                        )),
                  ),
                ),
              )),
              SizedBox(
                height: getRelativeHeight(40, mqData),
              ),
              ClipRect(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 44.119, sigmaY: 44.119),
                child: Container(
                  height: getRelativeHeight(110, mqData),
                  width: getRelativeWidth(630, mqData),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(20, 15, 38, 0.648579),
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(
                      left: getRelativeWidth(50, mqData),
                      right: getRelativeWidth(10, mqData)),
                  child: TextField(
                    style: TextStyle(
                        fontSize: getRelativeHeight(27, mqData),
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Montserrat'),
                    obscureText: _hidePassword,
                    cursorWidth: getRelativeWidth(2, mqData),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Your Password',
                      hintStyle: TextStyle(
                          fontSize: getRelativeHeight(27, mqData),
                          color: Color.fromRGBO(255, 255, 255, 0.398041),
                          fontFamily: 'Montserrat'),
                      suffixIcon: Container(
                        width: getRelativeWidth(86, mqData),
                        height: 32,
                        alignment: Alignment.center,
                        child: GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              _hidePassword ? 'SHOW' : 'HIDE',
                              style: TextStyle(
                                  fontSize: getRelativeHeight(19, mqData),
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _hidePassword = !_hidePassword;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              )),
              SizedBox(
                height: getRelativeHeight(50, mqData),
              ),
              Container(
                height: getRelativeHeight(100, mqData),
                width: getRelativeWidth(630, mqData),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: getRelativeHeight(25, mqData),
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Montserrat'),
                  ),
                  color: Color(0xFF645AFF),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: getRelativeHeight(50, mqData),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: getRelativeWidth(76, mqData),
                    height: getRelativeHeight(2, mqData),
                    color: Color(0xFFFFFFFF),
                  ),
                  SizedBox(
                    width: getRelativeWidth(30, mqData),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                        fontSize: getRelativeHeight(20, mqData),
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(
                    width: getRelativeWidth(30, mqData),
                  ),
                  Container(
                    width: getRelativeWidth(76, mqData),
                    height: getRelativeHeight(2, mqData),
                    color: Color(0xFFFFFFFF),
                  ),
                ],
              ),
              SizedBox(
                height: getRelativeHeight(50, mqData),
              ),
              Container(
                height: getRelativeHeight(100, mqData),
                width: getRelativeWidth(630, mqData),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: getRelativeHeight(48, mqData),
                          height: getRelativeHeight(48, mqData),
                          child: Image.asset('assets/atro/images/facebook.png'),
                        ),
                        Text(
                          'CONTINUE WITH FACEBOOK',
                          style: TextStyle(
                              fontSize: getRelativeHeight(25, mqData),
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Montserrat'),
                        ),
                      ]),
                  color: Color.fromRGBO(255, 255, 255, 0.35),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: getRelativeHeight(50, mqData),
              ),
              Container(
                width: getRelativeWidth(630, mqData),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'FORGOT DETAILS?',
                      style: TextStyle(
                          fontSize: getRelativeHeight(20, mqData),
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                          fontSize: getRelativeHeight(20, mqData),
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getRelativeHeight(110, mqData),
              )
            ],
          ),
        )
      ]),
    );
  }
}
