import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';


class UnBoxedType extends StatefulWidget {
  const UnBoxedType({Key? key}) : super(key: key);

  @override
  State<UnBoxedType> createState() => _UnBoxedTypeState();
}

class _UnBoxedTypeState extends State<UnBoxedType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: const Text("Coffret gourmand mini"),
        centerTitle: true,
      ),
      body: Column(
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
                  image: const AssetImage(assetUrl+"parfum.jpg")
                ), 
              ),
            ),
          ),
        Padding(
          padding:  EdgeInsets.only(top:20.0,left: 20,right: 20),
          child: ConstrainedBox(
             constraints: const BoxConstraints(
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
        ),
        const Padding(
          padding:  EdgeInsets.only(left:20,top:8.0),
          child: Text(
            "13500 FCFA",
            style: TextStyle(
                color: primaryColor,
                fontSize: 18
              ),
          ),
        ),
        // const Padding(
        //   padding:  EdgeInsets.only(left:20,top:18.0),
        //   child:  Text(
        //     "1 mois",
        //     style: TextStyle(
        //         color: primaryColor,
        //         fontSize: 18
        //       ),
        //   ),
        // ),
        const Padding(
          padding:  EdgeInsets.only(left:20,top:28.0),
          child: Text(
            "Coffret gourmand",
            style:  TextStyle(
                color: primaryColor,
                fontSize: 20
              ),
          ),
        ),
        ]
      ),
      bottomSheet: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
              shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
            ),
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Nouvel abonnement effectué",style: TextStyle(color: primaryColor),)));
          }, 
          child: const Text(
            "S'ABONNER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10
            ),
          )
       ),
      ),
    );
  }
}