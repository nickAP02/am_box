import 'dart:convert';

import 'package:am_box/models/user.dart';
import 'package:am_box/services/api.dart';
import 'package:am_box/services/local_storage.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  var result;
  var userLogin;
  var username;
  final LocalStorage localStorage =  LocalStorage();
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

  Future logout()async{
    await api.logout();
    localStorage.logout();
    return api.logout().then((value) => (value) {
      debugPrint("logout "+value.toString());
    });
  }
  Future getUsername()async{
    username = localStorage.getFirstName();
    return username;
  }
}