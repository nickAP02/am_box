import 'package:am_box/models/user.dart';
import 'package:am_box/screens/auth/login.dart';
import 'package:am_box/screens/auth/register.dart';
import 'package:am_box/screens/auth/verification.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class RegisterStep extends StatefulWidget {
  const RegisterStep({Key? key}) : super(key: key);

  @override
  State<RegisterStep> createState() => _RegisterStepState();
}

class _RegisterStepState extends State<RegisterStep> {
  late User user;
  final  _formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      // appBar: AppBar(
      //   elevation:0,
      //   title: const Text(
      //     "CREATION DE COMPTE",
      //     style: TextStyle(
      //       color:primaryColor
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top:100.0,),
            child: Center(
              child: Container(
                width: 300,
                height: 380,
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
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 50),
                                  margin: EdgeInsets.only(right:10,),
                                  width:200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: primaryColor
                                    ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                  ),
                                ),
                                Positioned(
                                  left:0,
                                  // right: 2,
                                  top: 2,
                                  child: Container(
                                    margin: EdgeInsets.only(right:20,),
                                    width:120,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(35)
                                    ),
                                    child: Center(
                                      child: Text(
                                        "INSCRIPTION",
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
                          padding: const EdgeInsets.only(top:10.0,right: 15,left: 5),
                          child: Container(
                             decoration: BoxDecoration(
                              border: Border.all(
                                color: primaryColor
                              ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)
                              ),
                            child: IntlPhoneField(
                              showDropdownIcon: false,
                              initialCountryCode: 'TG',
                              controller: phoneController,
                              keyboardType: TextInputType.text,
                              obscureText: false,
                              decoration:const InputDecoration(
                                contentPadding: EdgeInsets.only(right: 10),
                                hintStyle: TextStyle(
                                  color: primaryColor
                                ),
                                hintText: "Numero de téléphone",
                                // icon: Padding(
                                //   padding: EdgeInsets.only(left: 20),
                                //   child: Icon(
                                //     Icons.phone,
                                //     color: primaryColor,
                                //   ),
                                // ),
                                border: InputBorder.none
                              ),
                              onChanged: (value){
                                  user.phoneNumber = value.completeNumber;
                              },
                              validator: (value){
                                // value = phoneController.text;
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
                            backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
                          ),
                          onPressed: (){
                            Navigator.pushAndRemoveUntil<void>(
                              context,
                              MaterialPageRoute<void>(builder: (BuildContext build)=>Verification()),
                              ModalRoute.withName('/'),
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
                Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(builder: (BuildContext build)=>Login()),
                    ModalRoute.withName('/'),
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