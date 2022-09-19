import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text("Mon portefeuille"),
        // centerTitle: true,
      ),

      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: Stack(
                  children:
                  [
                    Container(
                      margin: EdgeInsets.only(left:20,right: 5),
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                      //   boxShadow: [
                      //   BoxShadow(
                      //   color:primaryColor.withOpacity(1),
                      //   spreadRadius: 25,
                      //   blurRadius: 9,
                      //   offset: const Offset(0, 3)
                      // )],
                      color: Color.fromRGBO(190, 153, 153, 1),
                      borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Positioned(
                    top: 25,
                    left: 25,
                    right: 25,
                    bottom: 25,
                    child: Container(
                      margin: EdgeInsets.only(left:10,right: 5),
                      height: 50,
                      width: 370,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:Color.fromRGBO(190, 153, 153, 1),
                            spreadRadius: 25,
                            blurRadius: 9,
                            offset: const Offset(0, 3)
                          )
                      ],
                      color: Color.fromRGBO(190, 153, 153, 1),
                      borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Row(
                              children: [
                                Image.asset(assetUrl+"wallet.png"),
                                Text(
                                    "100000 FCFA",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white.withOpacity(0.90)
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:18.0,top: 20),
                child: Text(
                  "Transactions récentes",
                  style: TextStyle(
                      color: primaryColor
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: ListTile(
                  title:Text(
                    "30000",
                    style: TextStyle(
                        color: primaryColor
                    )
                  ),
                  subtitle: Text(
                      DateTime.now().day.toString()+"/"+DateTime.now().month.toString()+"/"+DateTime.now().year.toString(),
                      style: TextStyle(
                          color: primaryColor
                      )
                  ),
                  leading: CircleAvatar(
                    maxRadius: 30,
                    child: Text(
                      "R",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    backgroundColor: primaryColor,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: primaryColor,
                    ),
                    onPressed: (){

                    },
                  ),
                ),
              ),
              Divider(
                thickness: 0.1,
                color: primaryColor,
              ),
              ListTile(
                title:Text(
                    "60000",
                    style: TextStyle(
                        color: primaryColor
                    )
                ),
                subtitle: Text(
                    DateTime.now().day.toString()+"/"+DateTime.now().month.toString()+"/"+DateTime.now().year.toString(),
                    style: TextStyle(
                        color: primaryColor
                    )
                ),
                leading: CircleAvatar(
                  maxRadius: 30,
                  child: Text(
                    "A",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  backgroundColor: primaryColor,
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: primaryColor,
                  ),
                  onPressed: (){

                  },
                ),
              ),
              Divider(
                thickness: 0.1,
                color: primaryColor,
              )
            ],
          ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color:primaryColor)
        ),
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
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Compte rechargé",style: TextStyle(color: primaryColor),)));
            },
            child: Text(
              "RECHARGER MON COMPTE",
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