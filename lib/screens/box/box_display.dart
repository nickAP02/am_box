import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../utils/constant.dart';

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
              //   boxShadow: [
              //   BoxShadow(
              //   color:Colors.white.withOpacity(0.7),
              //   spreadRadius: 5,
              //   blurRadius: 7,
              //   offset: const Offset(0, 3)
              // )],
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
                color:Color.fromARGB(119, 28, 28, 28),
                spreadRadius: 25,
                blurRadius: 0,
                offset: const Offset(0, 3)
              )],
              // color: Colors.grey.withOpacity(0.50),
              borderRadius: BorderRadius.circular(5)
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(185, 255, 255, 255)
                ),
              ),
            ),
          ),
        ]
        ),
      ],
    );
  }