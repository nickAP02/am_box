import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: Text("A propos"),
        // centerTitle: true,
      ),

      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  maxRadius: 60,
                  backgroundColor: primaryColor,
                ),
              ),
              ListTile(
                title:Center(
                  child: Text(
                      "MIBOX",
                      style: TextStyle(
                          color: primaryColor
                      )
                  ),
                ),
                subtitle: Center(
                  child: Text(
                      "v1.0.0",
                      style: TextStyle(
                          color: primaryColor.withOpacity(0.47)
                      )
                  ),
                ),
              ),
              TextButton(
                onPressed: (){}, 
                child: Text(
                  "MIBOX Politique de confidentialité"
                  )
              )
            ],
          ),
      ),
    );
  }
}