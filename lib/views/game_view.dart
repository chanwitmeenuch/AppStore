import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/appbar_custom.dart';

class GameView extends StatefulWidget {
  const GameView({Key key}) : super(key: key);

  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView>
    with AutomaticKeepAliveClientMixin {
  List<Tab> menuTap = [
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
    super.build(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBarCustom(
          menuTap: menuTap,
        ),
        body: TabBarView(children: [
          Container(
            child: Text('GameView'),
          ),
          Container(
            child: Text('GameView'),
          ),
          Container(
            child: Text('GameView'),
          ),
          Container(
            child: Text('GameView'),
          ),
          Container(
            child: Text('GameView'),
          ),
        ]),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
