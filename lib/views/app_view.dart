import 'package:flutter/material.dart';
import 'package:flutter_app/models/app_display.dart';
import 'package:flutter_app/models/app_model.dart';
import 'package:flutter_app/models/category_model.dart';
import 'package:flutter_app/widgets/appbar_custom.dart';
import 'package:flutter_app/widgets/detail_app.dart';
import 'package:flutter_app/widgets/header_app.dart';

class AppView extends StatefulWidget {
  const AppView({Key key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  List<AppDisplay> _data = [
    AppDisplay(categories: CategoryModel(categoryName: 'Category1'), apps: [
      AppModel(
          appName: 'Facebook App',
          appImageUrl: 'assets/images/fb.png',
          appSize: '26 MB'),
      AppModel(
          appName: 'Youtube App',
          appImageUrl: 'assets/images/yt2.png',
          appSize: '23 MB'),
      AppModel(
          appName: 'Rov MB',
          appImageUrl: 'assets/images/rov.png',
          appSize: '33 MB'),
      AppModel(
          appName: 'Line App',
          appImageUrl: 'assets/images/line.png',
          appSize: '41 MB')
    ]),
    AppDisplay(categories: CategoryModel(categoryName: 'Category2'), apps: [
      AppModel(
          appName: 'Facebook App',
          appImageUrl: 'assets/images/fb.png',
          appSize: '26 MB'),
      AppModel(
          appName: 'Youtube App',
          appImageUrl: 'assets/images/yt2.png',
          appSize: '23 MB'),
      AppModel(
          appName: 'Rov MB',
          appImageUrl: 'assets/images/rov.png',
          appSize: '33 MB'),
      AppModel(
          appName: 'Line App',
          appImageUrl: 'assets/images/line.png',
          appSize: '41 MB')
    ]),
    AppDisplay(categories: CategoryModel(categoryName: 'Category3'), apps: [
      AppModel(
          appName: 'Facebook App',
          appImageUrl: 'assets/images/fb.png',
          appSize: '26 MB'),
      AppModel(
          appName: 'Youtube App',
          appImageUrl: 'assets/images/yt2.png',
          appSize: '23 MB'),
      AppModel(
          appName: 'Rov MB',
          appImageUrl: 'assets/images/rov.png',
          appSize: '33 MB'),
      AppModel(
          appName: 'Line App',
          appImageUrl: 'assets/images/line.png',
          appSize: '41 MB')
    ]),
    AppDisplay(categories: CategoryModel(categoryName: 'Category4'), apps: [
      AppModel(
          appName: 'Facebook App',
          appImageUrl: 'assets/images/fb.png',
          appSize: '26 MB'),
      AppModel(
          appName: 'Youtube App',
          appImageUrl: 'assets/images/yt2.png',
          appSize: '23 MB'),
      AppModel(
          appName: 'Rov MB',
          appImageUrl: 'assets/images/rov.png',
          appSize: '33 MB'),
      AppModel(
          appName: 'Line App',
          appImageUrl: 'assets/images/line.png',
          appSize: '41 MB')
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: SingleChildScrollView(
        child: Column(
          children: _data.map((item) {
            return Column(children: [
              HeaderApp(
                textTitle: item.categories.categoryName,
              ),
              Container(
                height: 145,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: item.apps.map((app) {
                    return DetailApp(appModel: app);
                  }).toList(),
                ),
              ),
              Divider(
                // color: Colors.black,
                height: 15,
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
