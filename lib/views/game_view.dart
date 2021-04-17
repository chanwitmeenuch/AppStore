import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/appbar_custom.dart';

class GameView extends StatelessWidget {
  const GameView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Container(
        child: Text('GameView'),
      ),
    );
  }
}
