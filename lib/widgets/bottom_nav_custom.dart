import 'package:flutter/material.dart';

class BottomNavCustom extends StatelessWidget {
  final int selectedIndex;
  final Function onItemTapped;
  BottomNavCustom({@required this.selectedIndex, @required this.onItemTapped});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: 'App',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gamepad),
          label: 'Game',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_movies),
          label: 'Movie',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_movies),
          label: 'Movie',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: onItemTapped,
    );
  }
}
