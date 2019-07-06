import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_ui_designs/screens/atro/atro_login_screen.dart';
import 'package:flutter_ui_designs/screens/atro/feeds_loading.dart';

class AtroScreen extends StatefulWidget {
  static String uiName = 'Atro UI';

  @override
  _AtroScreenState createState() => _AtroScreenState();
}

class _AtroScreenState extends State<AtroScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Color(0xEEFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              title: Text('Swipe to navigate Designs'),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    'Okay',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          onPageChanged: (page) {},
          children: <Widget>[AtroLoginScreen(), FeedsLoading()],
        ));
  }
}
