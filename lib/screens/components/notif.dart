import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';

class Notif extends StatefulWidget {

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text("Notifications"),
        // centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "Vous venez de faire une recharge de 50000 FCFA",
                style: TextStyle(
                  color: primaryColor
                ),
                ),
              subtitle: Text(
                DateTime.now().day.toString()
                +"/"
                +DateTime.now().month.toString()
                +"/"
                +DateTime.now().year.toString()
                +" "+DateTime.now().hour.toString()
                +":"+DateTime.now().minute.toString(),
                style: TextStyle(
                  color: primaryColor.withOpacity(0.57)
                ),
              ),
              trailing: CircleAvatar(
                maxRadius: 50,
                backgroundColor: primaryColor,
              ),
            ),
            Divider(
              color: primaryColor,
            ),
            ListTile(
              title: Text(
                "Vous venez de faire une recharge de 50000 FCFA",
                style: TextStyle(
                  color: primaryColor
                ),
                ),
              subtitle: Text(
                DateTime.now().day.toString()
                +"/"
                +DateTime.now().month.toString()
                +"/"
                +DateTime.now().year.toString()
                +" "+DateTime.now().hour.toString()
                +":"+DateTime.now().minute.toString(),
                style: TextStyle(
                  color: primaryColor.withOpacity(0.57)
                ),
              ),
              trailing: CircleAvatar(
                maxRadius: 50,
                backgroundColor: primaryColor,
              ),
            ),
          ]
        )
      )
    );
  }
}