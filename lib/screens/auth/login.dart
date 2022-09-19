import 'package:am_box/screens/auth/register.dart';
import 'package:am_box/screens/home/home.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';


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
        title: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: const Text(
            "CONNEXION",
            style: TextStyle(
              color: primaryColor
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50.0,),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width/1.45,
                height: 500,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.only(top:18.0,left: 10),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50,left: 10,)),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 50),
                                  margin: EdgeInsets.only(left:30,),
                                  width:200,
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
                                    margin: EdgeInsets.only(left:20,),
                                    width:120,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(35)
                                    ),
                                    child: Center(
                                      child: Text(
                                        "CONNEXION",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
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
                          padding: const EdgeInsets.only(top:28.0,right: 15,left: 5,bottom: 30),
                          child: Container(
                             decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white
                              ),
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(35)
                              ),
                            child: TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.text,
                              obscureText: false,
                              decoration:const InputDecoration(
                                contentPadding: EdgeInsets.only(right: 10),
                                hintStyle: TextStyle(
                                  color: Colors.white
                                ),
                                hintText: "Tel",
                                icon: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
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
                          padding: const EdgeInsets.only(top:15.0,right: 15,left: 5,bottom: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white
                              ),
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(35)
                              ),
                            child: TextFormField(
                              controller: pwdController,
                              keyboardType: TextInputType.text,
                              obscureText: false,
                              decoration:const InputDecoration(
                                contentPadding: EdgeInsets.only(right: 10),
                                hintStyle: TextStyle(
                                  color: Colors.white
                                ),
                                hintText: "Mot de passe",
                                icon: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.password,
                                    color: Colors.white,
                                  ),
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
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          width: 150,
                          child: ElevatedButton(
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
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: primaryColor
                            ),
                          )
                        ),
                      ),
                      
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:78.0),
            child: TextButton(
              onPressed: (){
                Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>Register()
                      )
                  );
              }, 
              child: Text(
                "Pas encore de compte ? Inscrivez-vous",
                style: TextStyle(
                  color: primaryColor
                ),
                )
            ),
          )
        ],
      ),
    );
  }
}