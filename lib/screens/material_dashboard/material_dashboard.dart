import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialDashboard extends StatefulWidget {
  static String uiName = 'MaterialDashboard UI';

  @override
  _MaterialDashboardState createState() => _MaterialDashboardState();
}

class _MaterialDashboardState extends State<MaterialDashboard>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kTextTabBarHeight),
        child: Container(
          color: Color(0xFFF2F2F2),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(child: Container()),
                TabBar(
                  controller: _tabController,
                  indicatorColor: Color(0xFFC99C03),
                  // labelStyle: TextStyle(color: Colors.black),
                  labelColor: Color(0xFFC99C03),

                  unselectedLabelColor: Color(0xFF797979),
                  labelStyle: TextStyle(fontWeight: FontWeight.normal),
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal),
                  tabs: <Widget>[
                    Tab(
                      text: 'Home',
                    ),
                    Tab(
                      text: 'Profile',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[_buildChild1(), Container()],
      ),
    );
  }

  Widget _buildChild1() {
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        _buildItem(
          title: 'Pics',
          subtitle: '(250)',
          color: Color(0xFF529FEF),
          icon: Icons.image,
        ),
        _buildItem(
          title: 'Music',
          subtitle: '(250)',
          color: Color(0xFF3DBDC9),
          icon: Icons.music_note,
        ),
        _buildItem(
          title: 'Videos',
          subtitle: '(250)',
          color: Color(0xFF9E78C2),
          icon: Icons.videocam,
        ),
        _buildItem(
          title: 'Docs',
          subtitle: '(250)',
          color: Color(0xFFF5BD39),
          icon: CupertinoIcons.news,
        ),
        _buildItem(
          title: 'Apps',
          subtitle: '(250)',
          color: Color(0xFF6072D4),
          icon: Icons.apps,
        ),
        _buildItem(
          title: 'Favourites',
          subtitle: '(250)',
          color: Color(0xFFF19F34),
          icon: Icons.favorite,
        ),
        _buildItem(
          title: 'Notifications',
          subtitle: '(250)',
          color: Colors.blue,
          icon: Icons.notifications,
        ),
 
        _buildItem(
          title: 'Reports',
          subtitle: '(250)',
          color: Color(0xFFB2B2B2),
          icon: Icons.assessment,
        ),
        _buildItem(
          title: 'Settings',
          subtitle: '(250)',
          color: Colors.purple,
          icon: Icons.settings,
        ),
      ],
    );
  }

  Container _buildItem({
    String title,
    String subtitle,
    IconData icon,
    Color color,
  }) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Icon(
              icon,
              size: 32,
              color: Color(0xFFE7F4F5),
            ),
          ),
          Container(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF323232),
              ),
            ),
          ),
          Container(
            child: Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Color(0xFF969696),
              ),
            ),
          )
        ],
      ),
    );
  }
}
