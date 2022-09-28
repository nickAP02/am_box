import 'package:am_box/services/api.dart';
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier{
  dynamic categories;
  final Api api = Api();
  Future<dynamic> boxCategories() async{
    categories = await api.categories();
    debugPrint("liste categories "+categories.toString());
    notifyListeners();
    return categories;
  }

}