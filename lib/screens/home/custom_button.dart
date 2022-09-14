import 'package:am_box/screens/home/desc_categorie.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   const CustomButton(
     dynamic label,
     dynamic imgUrl
    );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 35,
      right: 8,
      child: ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
          shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
        ),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
            builder: (context)=> CategorieDesc(
              "Parfums",
              "parfum.jpg"
            )
            )
          );
        },
        child: Text(
          "En savoir plus",
          style: TextStyle(
            fontSize: 10,
            color: Colors.white
          ),
        )
      ),
    );
  }
}