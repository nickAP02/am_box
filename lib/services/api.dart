import 'dart:convert';

import 'package:am_box/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Api{
  static final client = http.Client();
  static const url = "http://192.168.0.118:8000";
  Map<String,String> headers = 
  {
    'Content-Type':'application/json',
    'Accept':'application/json'
  };
  Uri fullUri(String uri){
    return Uri.parse('$url/$uri');
  }
  Future<dynamic> register(User user) async{
  //  debugPrint("api "+fullUri("api/register").toString());
    try {
      debugPrint("ok");
      var response = await client.post(
      fullUri("api/register"), 
      headers: headers,
      body: json.encode({
        "email":user.email,
        "firstname":user.firstName,
        "lastname":user.lastName,
        "phone":user.phoneNumber,
        "password":user.password,
        "password_confirmation":user.password
      }));
      var result=json.decode(response.body);
      
      debugPrint("api status "+result.toString());
      if(response.statusCode == 200){
        return result;
      }
      else{
        return result;
      }
    } on Exception catch (e) {
      throw e.toString();
    }
  }

  Future<dynamic> login(User user) async{
     debugPrint("api login "+fullUri("api/userLogin").toString());
    var response = await client.post(
      fullUri("api/userLogin"), 
      headers: headers,
      body: json.encode({
        "telephone":user.phoneNumber,
        "password":user.password
      }));
    var result=json.decode(response.body);
    debugPrint("api status "+result.toString());
    if(response.statusCode == 200){
      return result;
    }
    else{
      return result;
    }
  }
}