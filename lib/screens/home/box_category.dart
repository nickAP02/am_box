import 'package:am_box/screens/home/custom_button.dart';
import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';

Widget categoryBox(String label,String imageUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
          Container(
            margin: EdgeInsets.only(left:10,right: 5),
            height: 200,
            width: 350,
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
                image: NetworkImage(
                  "http://192.168.0.118:8000/categoriesImages/"+imageUrl,
                  ) as ImageProvider
              ), 
            ),
          ),
          Positioned(
            top: 8,
            left: 30,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                color: primaryColor
              ),
            ),
          ),
          CustomButton(
            label,
            imageUrl,
          )
        ]
        ),
      ],
    );
  }

