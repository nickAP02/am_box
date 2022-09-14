import 'package:am_box/screens/box_display.dart';
import 'package:am_box/screens/subscribed_box_type.dart';
import 'package:am_box/screens/unsubscribed_box_type.dart';
import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoxType extends StatefulWidget {
   const BoxType(
    String label,
    String desc,
    double price,
    String duration
  );

  @override
  State<BoxType> createState() => _BoxTypeState();
}

class _BoxTypeState extends State<BoxType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text("Coffret gourmand"),
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
              height: 200,
              width: 340,
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
                  image: AssetImage(assetUrl+"vin.jpg")
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
               "Le coffret gourmand est compose de 2  vins de grande marque et"+
               "d'autres bullshit hyper couteux que vous nous ferez le plaisir d'acheter",
               style: TextStyle(
                 color: primaryColor,
                 fontSize: 18
               ),
             ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,bottom: 20,top: 10),
          child: Text(
            "Types de box",
             style: TextStyle(
                color: primaryColor,
                fontSize: 18
              ),
          ),
        ),
        Row(
          children:[
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                    MaterialPageRoute(
                            builder: (context)=>UnBoxedType()
                    )
                  );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left:10,right: 5),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:Colors.white.withOpacity(0.7),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3)
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        image:DecorationImage(
                          fit: BoxFit.cover,
                          scale: 1,
                          opacity: 1,
                          image: AssetImage(assetUrl+ "vin.jpg",)
                        ), 
                      ),
                    ),
                  ),
                ]
              ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 10),
              child:
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: double.infinity
                ),
              child:
              Text(
                  "Coffret gourmand mini",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 10),
              child: Text(
                "13500 FCFA",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
              
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  GestureDetector(
                    onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=>BoxedType()
                          )
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left:10,right: 5),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:Colors.white.withOpacity(0.7),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3)
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        image:DecorationImage(
                          fit: BoxFit.cover,
                          scale: 1,
                          opacity: 1,
                          image: AssetImage(assetUrl+ "vin.jpg",)
                        ), 
                      ),
                    ),
                  ),
                ]
              ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 10),
              child:
              ConstrainedBox(
             constraints: BoxConstraints(
               maxWidth: double.infinity
             ),
             child:
              Text(
                  "Coffret gourmand",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 10),
              child: Text(
                "22500 FCFA",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
              
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    margin: EdgeInsets.only(left:10,right: 5),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:Colors.white.withOpacity(0.7),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3)
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      image:DecorationImage(
                        fit: BoxFit.cover,
                        scale: 1,
                        opacity: 1,
                        image: AssetImage(assetUrl+ "vin.jpg",)
                      ), 
                    ),
                  ),
                ]
              ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 10),
              child:
              ConstrainedBox(
             constraints: BoxConstraints(
               maxWidth: double.infinity
             ),
             child:
              Text(
                  "Coffret gourmand ",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 10),
              child: Text(
                "30000 FCFA",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
          ]
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,top: 10),
          child: Text(
            "Exemples de produits",
            style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            // fontWeight: FontWeight.bold
            ),
          ),
        ),
        Row(
          children: [
          Container(
            margin: EdgeInsets.only(left:10,right: 5,bottom: 80),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.7),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3)
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              image:DecorationImage(
                fit: BoxFit.cover,
                scale: 1,
                opacity: 1,
                image: AssetImage(assetUrl+ "vin.jpg",)
              ), 
            ),
                ),
        Container(
          margin: EdgeInsets.only(left:10,right: 5,bottom: 80),
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:Colors.white.withOpacity(0.7),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3)
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            image:DecorationImage(
              fit: BoxFit.cover,
              scale: 1,
              opacity: 1,
              image: AssetImage(assetUrl+ "vin.jpg",)
            ), 
          ),
        ),
            Container(
              margin: EdgeInsets.only(left:10,right: 5,bottom: 80),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:Colors.white.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3)
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                image:DecorationImage(
                  fit: BoxFit.cover,
                  scale: 1,
                  opacity: 1,
                  image: AssetImage(assetUrl+ "vin.jpg",)
                ), 
              ),
            ),
          ],
        ),
    
        ]
        ),
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
          child: Text(
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