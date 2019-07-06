import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Designs',
      home: HomeScreen(),
    );
  }
}
