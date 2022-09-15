import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57),
        ),
        CircleAvatar(
          backgroundColor: Color.fromRGBO(191, 153,153, 1).withOpacity(0.87),
        ),
        Divider(
          color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57),
        ),
        ListTile(
        title: Text(
        "Mes notifications",
        style: TextStyle(
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        leading: Icon(
        Icons.notifications,
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        ListTile(
        title: Text(
        "Mon compte",
        style: TextStyle(
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        leading: Icon(
        Icons.account_circle_rounded,
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        ListTile(
        title: Text(
        "Mes transactions",
        style: TextStyle(
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        leading: Icon(
        Icons.account_balance_wallet,
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        ListTile(
        title: Text(
        "Suggestions",
        style: TextStyle(
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        leading: Icon(
        Icons.inbox,
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        ListTile(
        title: Text(
        "Mes abonnements",
        style: TextStyle(
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
        leading: Icon(
        Icons.logout,
        color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
        ),
        ),
          ListTile(
            title: Text(
              "Produits du mois",
              style: TextStyle(
                  color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
              ),
            ),
            leading: Icon(
                Icons.logout,
                color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
            ),
          ),
          ListTile(
            title: Text(
              "Lieux de livraison",
              style: TextStyle(
                  color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
              ),
            ),
            leading: Icon(
                Icons.logout,
                color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
            ),
          )
        ],
      )
      ),
    );
  }
}