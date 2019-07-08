import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui_designs/screens/atro/atro.dart';
import 'package:flutter_ui_designs/screens/material_dashboard/material_dashboard.dart';

import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF132434),
        centerTitle: true,
        title: Text(
          'Flutter UI Designs with Source Code',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Color(0xFF132434)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          'Note: We do not own these Designs. All Designs in this App are available from Free sources and implemented using Flutter by Snowclare.',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: Color(0xFF104761),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/github.png',
                      color: Colors.white,
                      width: 24,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Get Source Code on Github',
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
              onPressed: () async {
                const url = 'https://github.com/snowclare/flutter_ui_designs';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ),
          ListTile(
            title: Text(
              AtroScreen.uiName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Tap to View',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AtroScreen()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              MaterialDashboard.uiName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Tap to View',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => MaterialDashboard()));
            },
          ),
          Divider()
        ],
      ),
    );
  }
}
