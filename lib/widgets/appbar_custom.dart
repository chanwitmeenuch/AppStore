import 'package:flutter/material.dart';
import 'package:flutter_app/views/Signin.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  AppBarCustom({Key key})
      : preferredSize = Size.fromHeight(100.0),
        super(key: key);
  @override
  final Size preferredSize;
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  void _login() {
    Navigator.pop(context);
  }

  void _changePassword() {
    setState(() => this._showPassword = !this._showPassword);
  }

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return Signin(
                  showPassword: _showPassword,
                  changePassword: _changePassword,
                  signin: _login,
                );
              });
        },
        icon: Icon(
          Icons.person_pin,
          color: Colors.black87,
        ),
      ),
      title: Text(
        'APPSTORE',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black87,
          ),
          onPressed: () {},
        )
      ],
      bottom: TabBar(
        labelColor: Colors.black,
        indicatorWeight: 4,
        indicatorColor: Colors.orangeAccent,
        isScrollable: true,
        tabs: [
          Tab(
            child: Text('สำหรับคุณ'),
          ),
          Tab(
            child: Text('อันดับสูงสุด'),
          ),
          Tab(
            child: Text('หมวดหมู่'),
          ),
          Tab(
            child: Text('โดนใจ บก.'),
          ),
          Tab(
            child: Text('ครอบครัว'),
          ),
        ],
      ),
    );
  }
}
