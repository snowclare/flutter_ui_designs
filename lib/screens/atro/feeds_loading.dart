import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/screens/atro/design_size.dart';

class FeedsLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mqData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D27),
        leading: Icon(Icons.dehaze),
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'FOLLOWING',
                style: TextStyle(
                    fontSize: getRelativeHeight(26, mqData),
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Montserrat'),
              ),
              Text(
                '#seaside',
                style: TextStyle(
                    fontSize: getRelativeHeight(20, mqData),
                    color: Color(0xFF24F0B6),
                    fontFamily: 'Montserrat'),
              )
            ]),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/atro/images/more_horiz.png'),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Color(0xFF14D2B8),
        unselectedItemColor: Color(0xFF140F26),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text(
              'FEED',
              style: TextStyle(
                  fontSize: getRelativeHeight(16, mqData),
                  color: Color(0xFF140F26),
                  fontFamily: 'Montserrat'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            title: Text(
              'PHOTOS',
              style: TextStyle(
                  fontSize: getRelativeHeight(16, mqData),
                  color: Color(0xFF140F26),
                  fontFamily: 'Montserrat'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text(
              'PEOPLE',
              style: TextStyle(
                  fontSize: getRelativeHeight(16, mqData),
                  color: Color(0xFF14D2B8),
                  fontFamily: 'Montserrat'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text(
              'INBOX',
              style: TextStyle(
                  fontSize: getRelativeHeight(16, mqData),
                  color: Color(0xFF140F26),
                  fontFamily: 'Montserrat'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text(
              'MORE',
              style: TextStyle(
                  fontSize: getRelativeHeight(16, mqData),
                  color: Color(0xFF140F26),
                  fontFamily: 'Montserrat'),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Image.asset('assets/atro/images/feed_placeholder.png'),
          );
        },
      ),
    );
  }
}
