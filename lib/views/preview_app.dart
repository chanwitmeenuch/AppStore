import 'package:flutter/material.dart';
import 'package:flutter_app/models/app_model.dart';

class PreviewApp extends StatelessWidget {
  final AppModel appDetail;
  PreviewApp({@required this.appDetail});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            'PreviewApp',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Text(appDetail.appName),
        ),
      ),
    );
  }
}
