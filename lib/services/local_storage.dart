import 'dart:convert';

// import 'package:ago_ahome_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LocalStorage{
  var value;
  var token;
    Future setToken(String token)async{
      var pref = await SharedPreferences.getInstance();
      return pref.setString("token", token);
    }

    getToken()async{
      var pref = await SharedPreferences.getInstance();
      token = pref.getString("token");
      return token;
    }
  
    setName(String username)async{
      var pref = await SharedPreferences.getInstance();
      var newValue = pref.setString("name", username);
    }
    getName()async{
      var pref = await SharedPreferences.getInstance();
      var username = pref.getString("name");
      debugPrint("name "+username.toString());
      return username;
    }
    setEmail(String email)async{
      var pref = await SharedPreferences.getInstance();
      var value = pref.setString("email", email);
    }
    getEmail()async{
      var pref = await SharedPreferences.getInstance();
      var username = pref.getString("email");
      debugPrint("email "+username.toString());
      return username;
    }

    setPhoneNumber(String username)async{
      var pref = await SharedPreferences.getInstance();
      var newValue = pref.setString("phone", username);
    }
    getPhoneNumber()async{
      var pref = await SharedPreferences.getInstance();
      var phoneNumber = pref.getString("phone");
      debugPrint("phone number "+phoneNumber.toString());
      return phoneNumber;
    }
    setFirstName(String firstName)async{
      var pref = await SharedPreferences.getInstance();
      var firstname = pref.setString("firstName", firstName);
    }
    getFirstName()async{
      var pref = await SharedPreferences.getInstance();
      var firstName = pref.getString("firstName");
      debugPrint("firstName "+firstName.toString());
      return firstName;
    }
    setRole(String role)async{
      var pref = await SharedPreferences.getInstance();
      var newValue = pref.setString("username", role);
    }
    getUsername()async{
      var pref = await SharedPreferences.getInstance();
      var role = pref.getString("role");
      debugPrint("role "+role.toString());
      return role;
    }

    logout()async{
      var pref = await SharedPreferences.getInstance();
      pref.remove("token");
    }

}