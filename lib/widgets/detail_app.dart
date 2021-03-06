import 'package:flutter/material.dart';
import 'package:flutter_app/models/app_model.dart';
import 'package:flutter_app/views/preview_app.dart';

class DetailApp extends StatelessWidget {
  final AppModel appModel;

  DetailApp({@required this.appModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(_createRoute(appModel));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: 120,
        child: Column(
          children: [
            Image(
              image: AssetImage(appModel.appImageUrl),
              height: 100,
              width: 125,
            ),
            Container(
              height: 35,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appModel.appName,
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    appModel.appSize,
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute(AppModel appModel) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => PreviewApp(
      appDetail: appModel,
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
