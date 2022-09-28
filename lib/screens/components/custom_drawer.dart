import 'package:am_box/screens/components/params.dart';
import 'package:am_box/screens/components/wallet.dart';
import 'package:am_box/screens/info/about.dart';
import 'package:am_box/screens/info/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../services/providers/user_provider.dart';
import '../../utils/colors.dart';
import '../../utils/constant.dart';
import '../auth/login.dart';

class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0,right: 50),
                    child: Center(
                        child: CircleAvatar(
                          maxRadius: 40,
                          minRadius:25,
                          backgroundImage: AssetImage(assetUrl+"image.jfif"),
                        )
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:90.0,top: 10),
                child: Text(
                  "Username",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
                Divider(
                  height: 5,
                  color: primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: ListTile(
                    title: Text(
                      "Mes abonnements",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                   leading: Image.asset(
                       assetUrl+"package.png",
                     height: 25,
                     color: primaryColor,
                   ),
                  ),
                ),
              ListTile(
                title: Text(
                  "Produits du mois",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                leading:  Image.asset(
                  assetUrl+"box.png",
                  height: 25,
                  // color: primaryColor,
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
                  "Mon portefeuille",
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
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context)=>Params()
                    )
                  );
                },
                title: Text(
                  "Mes paramètres",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                leading: Icon(
                    Icons.settings,
                  color: primaryColor,
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(builder: (BuildContext build)=>About()),
                  );
                },
                title: Text(
                  "A propos",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                leading: Icon(
                    Icons.info,
                  color: primaryColor,
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(builder: (BuildContext build)=>Contact()),
                    ModalRoute.withName('/'),
                  );
                },
                title: Text(
                  "Nous contacter",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                leading: Icon(
                    Icons.contact_page,
                  color: primaryColor,
                ),
              ),
              ListTile(
                onTap: (){
                  userProvider.logout();
                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(builder: (BuildContext build)=>Login()),
                    ModalRoute.withName('/'),
                  );
                },
                title: Text(
                  "Déconnexion",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                leading: Icon(
                    Icons.logout,
                  color: primaryColor,
                ),
              )
            ],
        ),
      )
    );
  }
}