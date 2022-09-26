import 'package:am_box/screens/auth/login.dart';
import 'package:am_box/screens/auth/register.dart';
import 'package:am_box/screens/home/home.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final  _formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      // appBar: AppBar(
      //   elevation:0,
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 40),
      //     child: const Text(
      //       "CONNEXION",
      //       style: TextStyle(
      //         color: primaryColor
      //       ),
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:150.0,),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width/1.45,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.only(top:18.0,left: 10),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50,left: 10,)),
                        Center(
                          child: Text(
                            "VALIDER LE CODE",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:28.0,right: 15,left: 5,bottom: 30),
                          child: Text(
                            "Entrer le code",
                            style: TextStyle(
                              fontSize: 14,
                              color: primaryColor
                            ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0,right: 15,left: 5,bottom: 30),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 5, 
                            pinTheme: PinTheme(
                              inactiveColor: primaryColor.withOpacity(0.57),
                              activeColor: primaryColor
                            ),
                            onChanged: (value){
                              setState(() {
                                
                              });
                            }
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:28.0),
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushAndRemoveUntil<void>(
                                context,
                                MaterialPageRoute<void>(builder: (BuildContext build)=>Verification()),
                                ModalRoute.withName('/'),
                              );
                            }, 
                            child: Row(
                              children: [
                                Text(
                                  "Code non reçu ?",
                                  style: TextStyle(
                                    color: primaryColor
                                  ),
                                  ),
                                  Text(
                                  "Renvoyez le code",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: primaryColor
                                  ),
                                  ),
                              ],
                            )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          width: 100,
                          child: ElevatedButton(
                            style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.white),
                            shadowColor:  MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
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
                              color: Colors.white
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
                          builder: (context)=>Login()
                      )
                  );
              }, 
              child: Text(
                "Vous avez déjà un compte ? Connectez-vous",
                style: TextStyle(
                  color: Colors.white
                ),
                )
            ),
          )
        ],
      ),
    );
  }
}