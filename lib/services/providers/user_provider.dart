import 'package:am_box/models/user.dart';
import 'package:am_box/services/api.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  var result;
  final Api api = Api();
  Future register(User user) async{
    result = await api.register(user);
    notifyListeners();
    return result;
  }

  Future login(User user) async{
    result = await api.login(user);
    notifyListeners();
    return result;
  }

}