import 'package:flutter/material.dart';
import 'package:analytic/overview/screen/overview.dart';
import 'package:analytic/setting/screen/option.dart';
import 'package:analytic/recomendation/screen/recomendation.dart';
import 'package:analytic/utils/widget-model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> _children = [
    Overview(),
    Recomendation(),
    Overview(),
    Option(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          bottomBarIcons(icon: Icons.insert_chart_outlined, title: 'Overview'),
          bottomBarIcons(icon: Icons.wb_incandescent_outlined, title: 'Recomendations'),
          bottomBarIcons(icon: Icons.table_chart_outlined, title: 'Campaigns'),
          bottomBarIcons(icon: Icons.more_horiz, title: 'More'),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        elevation: 10.0,
      ),
    );
  }
}