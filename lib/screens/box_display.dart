import 'package:am_box/screens/box_types.dart';
import 'package:am_box/screens/home/custom_button.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/constant.dart';

Widget boxDisplay(String label,String imageUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
          Container(
            margin: EdgeInsets.only(left:10,right: 5),
            height: 260,
            width: 190,
            decoration: BoxDecoration(
                boxShadow: [
                BoxShadow(
                color:Colors.white.withOpacity(0.7),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3)
              )],
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              image:DecorationImage(
                fit: BoxFit.cover,
                scale: 1,
                opacity: 1,
                image: AssetImage(assetUrl+imageUrl)
              ), 
            ),
          ),
          Positioned(
            top: 145,
            left: 40,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                BoxShadow(
                color:Colors.white.withOpacity(1),
                spreadRadius: 25,
                blurRadius: 9,
                offset: const Offset(0, 3)
              )],
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  color: primaryColor
                ),
              ),
            ),
          ),
        ]
        ),
      ],
    );
  }