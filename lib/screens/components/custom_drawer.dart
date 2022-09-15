import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                ListTile(
                  title: Text(
                    "Mes abonnements",
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
                  "Produits du mois",
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
                  "Mon portefeuille",
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
                  "Mes paramètres",
                  style: TextStyle(
                      color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
                  ),
                ),
                leading: Icon(
                    Icons.settings,
                    color: Color.fromRGBO(191, 153,153, 1).withOpacity(0.57)
                ),
              ),
              ListTile(
                title: Text(
                  "Déconnexion",
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
        ),
      )
    );
  }
}