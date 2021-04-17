import 'package:flutter/material.dart';
import 'package:flutter_app/views/app_view.dart';
import 'package:flutter_app/views/game_view.dart';
import 'package:flutter_app/views/movie_view.dart';
import 'package:flutter_app/widgets/appbar_custom.dart';
import 'package:flutter_app/widgets/bottom_nav_custom.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    AppView(),
    GameView(),
    MovieView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          //appBar: AppBarCustom(),
          body: TabBarView(children: [
            SafeArea(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            SafeArea(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            SafeArea(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            SafeArea(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            SafeArea(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ]),
          bottomNavigationBar: BottomNavCustom(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          )),
    );
  }
}
