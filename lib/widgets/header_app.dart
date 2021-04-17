import 'package:flutter/material.dart';
import 'package:flutter_app/views/app_all.dart';

class HeaderApp extends StatelessWidget {
  final String textTitle;

  HeaderApp({@required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // GestureDetector(
          //   child: Text(
          //     'SeeAll',
          //     style: TextStyle(decoration: TextDecoration.underline),
          //   ),
          //   onTap: () {
          //     print('click');
          //   },
          // ),
          IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AppAll(
                            categoryName: textTitle,
                          )),
                );
              })
        ],
      ),
    );
  }
}
