import 'package:am_box/screens/components/notif.dart';
import 'package:am_box/screens/components/wallet.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';

class Params extends StatefulWidget {

  @override
  State<Params> createState() => _ParamsState();
}

class _ParamsState extends State<Params> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text("Paramètres"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Divider(
          color: primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: ListTile(
            title: Text(
              "Username",
                style: TextStyle(
                  color: primaryColor
                ),
              ),
            subtitle: Text(
              "20 abonnements",
              style: TextStyle(
                color: primaryColor
              ),
              ),
            leading: CircleAvatar(
              backgroundColor: primaryColor,
            ),
          ),
        ),
        Divider(
          color: primaryColor,
        ),
        ListTile(
          onTap: (){
            Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>Notif()
                      )
                  );
          },
            title: Text(
            "Mes notifications",
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          leading: Icon(
            Icons.notifications,
            color: primaryColor,
          ),
        ),
        ListTile(
            title: Text(
            "Mon compte",
              style: TextStyle(
                color: primaryColor,
              ),
          ),
            leading: Icon(
                Icons.account_circle_rounded,
                color: primaryColor,
            ),
        ),
        ListTile(
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context)=>Wallet()
                )
            );
          },
          title: Text(
          "Mes transactions",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        leading: Icon(
          Icons.account_balance_wallet,
          color: primaryColor,
          ),
        ),
        ListTile(
          title: Text(
          "Suggestions",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        leading: Icon(
          Icons.inbox,
          color: primaryColor,
        ),
        ),
        ListTile(
          title: Text(
          "Mes abonnements",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        leading: Icon(
            Icons.gif_box,
            color: primaryColor,
          ),
        ),
          ListTile(
            title: Text(
              "Produits du mois",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
            leading: Icon(
                Icons.gif_box,
                color: primaryColor,
            ),
          ),
          ListTile(
            title: Text(
              "Lieux de livraison",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
              leading: Icon(
                Icons.location_on,
                color: primaryColor,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,right: 30),
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
                        shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(25)
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                    ),
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Nouvel abonnement effectué",style: TextStyle(color: primaryColor),)));
                    },
                    child: const Text(
                      "Modifier le numero de téléphone",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 10
                      ),
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  margin: EdgeInsets.only(left: 20,right: 30),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
                          shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              side: BorderSide(color: primaryColor),
                              borderRadius: BorderRadius.circular(25))
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                      ),
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Nouvel abonnement effectué",style: TextStyle(color: primaryColor),)));
                      },
                      child: const Text(
                        "Modifier le mot de passe",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 10
                        ),
                      )
                  ),
                ),
              ),
            ],
          )
        ],
      )
      ),
    );
  }
}