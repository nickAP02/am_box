import 'package:am_box/screens/home/box_category.dart';
import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategorieDesc extends StatelessWidget {
   CategorieDesc(
      dynamic title,
      dynamic imgUrl
    );

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text("Parfums"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Container(
              margin: EdgeInsets.only(left:30,right: 5),
              height: 300,
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
                  image: AssetImage(assetUrl+"parfum.jpg")
                ), 
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
          child: ConstrainedBox(
             constraints: BoxConstraints(
               maxWidth: double.infinity
             ),
             child: Text(
               "Retrouvez dans la catégorie parfums,des parfums de luxe des marques que vous aimez. Si vous voulez découvrir ces parfums abonnez vous à la box cosmétiques",
               style: TextStyle(
                 color: primaryColor,
                 fontSize: 18
               ),
             ),
          ),
        )]
          ),
      )
    );
  }
}