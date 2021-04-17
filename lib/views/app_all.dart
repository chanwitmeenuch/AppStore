import 'package:flutter/material.dart';

class AppAll extends StatelessWidget {
  final String categoryName;
  AppAll({@required this.categoryName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          '$categoryName',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
    );
  }
}
