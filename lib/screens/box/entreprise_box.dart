import 'package:am_box/screens/box/subscribed_box_type.dart';
import 'package:am_box/screens/box/unsubscribed_box_type.dart';
import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';


class EntrepriseBox extends StatefulWidget {
    String label;
    String desc;
    String image;
    double price;
    String duration;
    EntrepriseBox(
      this.label,
      this.desc,
      this.image,
      this.price,
      this.duration
  );

  @override
  State<EntrepriseBox> createState() => _EntrepriseBoxState();
}

class _EntrepriseBoxState extends State<EntrepriseBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text(widget.label),
        // centerTitle: true,
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
                  image: AssetImage(assetUrl+widget.image)
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
               widget.desc,
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
                          image: AssetImage(assetUrl+ widget.image,)
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
                  widget.label,
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
                widget.price.toString(),
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
                          image: AssetImage(assetUrl+ widget.image,)
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
                  widget.label,
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
                widget.price.toString(),
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
                        image: AssetImage(assetUrl+ widget.image)
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
                  widget.label,
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
                widget.price.toString(),
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
        
        ]
        ),
      ),
      floatingActionButton: Icon(Icons.abc),
      // bottomSheet: Container(
      //   height: 60,
      //   width: MediaQuery.of(context).size.width,
      //   child: ElevatedButton(
      //     style: ButtonStyle(
      //         overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
      //         shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
      //         shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      //         backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
      //       ),
      //     onPressed: (){
      //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Nouvel abonnement effectué",style: TextStyle(color: primaryColor),)));
      //     }, 
      //     child: Text(
      //       "S'ABONNER",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 10
      //       ),
      //     )
      //  ),
      // ),
    );
  }
}