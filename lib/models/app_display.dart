import 'package:flutter/foundation.dart';
import 'package:flutter_app/models/app_model.dart';
import 'package:flutter_app/models/category_model.dart';

class AppDisplay {
  CategoryModel categories;
  List<AppModel> apps;

  AppDisplay({@required this.categories, @required this.apps});
}
