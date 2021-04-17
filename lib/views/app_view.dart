import 'package:flutter/material.dart';
import 'package:flutter_app/views/app_item.dart';
import 'package:flutter_app/widgets/appbar_custom.dart';

class AppView extends StatefulWidget {
  const AppView({Key key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  List<Tab> _menuTap = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBarCustom(
          menuTap: _menuTap,
        ),
        body: TabBarView(
          children: [
            AppItem(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
