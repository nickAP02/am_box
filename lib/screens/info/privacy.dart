import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text("Contact"),
        // centerTitle: true,
      ),

      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              ListTile(
                leading: Icon(Icons.location_on,color: primaryColor,),
                title: Text(
                  "Lomé,TOGO",
                  style: TextStyle(
                    color: primaryColor
                  ),
              ),
              ),
              ListTile(
                leading: Icon(Icons.phone,color: primaryColor,),
                title: Text(
                  "+228 90 23 08 50",
                  style: TextStyle(
                    color: primaryColor
                  ),
              ),
              ),
              ListTile(
                leading: Icon(Icons.email,color: primaryColor,),
                title: Text(
                  "mibox@gmail.com",
                  style: TextStyle(
                    color: primaryColor
                  )
                ),
              ),
              
            ]
          )
        )
    );
  }
}