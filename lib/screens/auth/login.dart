import 'package:am_box/screens/home/home.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final  _formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        title: const Text(
          "CONNEXION",
          style: TextStyle(
            color: primaryColor
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width/1.45,
              height: 450,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(35)
              ),
              child: Form(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50,left: 80)),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width:230,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)
                              ),
                            ),
                            Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                width:120,
                                height: 46,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(35)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top:10.0,left: 8,),
                                  child: Text(
                                    "CONNEXION",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:28.0,right: 15,left: 15,bottom: 30),
                      child: Container(
                         decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35)
                          ),
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          decoration:const InputDecoration(
                            hintStyle: TextStyle(
                              color: primaryColor
                            ),
                            hintText: "Tel",
                            icon: Icon(
                              Icons.phone,
                              color: primaryColor,
                            ),
                            border: InputBorder.none
                          ),
                          validator: (value){
                            value = phoneController.text;
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15.0,right: 15,left: 15,bottom: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35)
                          ),
                        child: TextFormField(
                          controller: pwdController,
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          decoration:const InputDecoration(
                            hintStyle: TextStyle(
                              color: primaryColor
                            ),
                            hintText: "Mot de passe",
                            icon: Icon(
                              Icons.password,
                              color: primaryColor,
                            ),
                            border: InputBorder.none
                          ),
                          validator: (value){
                            value = pwdController.text;
                            return null;
                          },
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
                      shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                    ),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                        builder: (context)=> Home()
                        )
                      );
                    },
                  child: Text(
                    "VALIDER",
                    style: TextStyle(
                      fontSize: 10,
                      color: primaryColor
                    ),
                  )
                  )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}