import 'package:am_box/models/user.dart';
import 'package:am_box/screens/auth/login.dart';
import 'package:am_box/screens/home/home.dart';
import 'package:am_box/services/providers/user_provider.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final  _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var pwdConfirmController = TextEditingController();
  var pwdController = TextEditingController();
  User user = User(email: "", firstName: "", lastName: "", phoneNumber: "", password: "");
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:70.0),
              child: const Text(
              "CREATION DE COMPTE",
              style: TextStyle(
                color:Colors.white
              ),
          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0,),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/1.45,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: Form(
                    key: _formKey,
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
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pushAndRemoveUntil<void>(
                                        context,
                                        MaterialPageRoute<void>(builder: (BuildContext build)=>Login()),
                                        ModalRoute.withName('/'),
                                      );
                                    },
                                    child: Positioned(
                                      left:0,
                                      // right: 2,
                                      top: 3,
                                      child: Container(
                                        margin: EdgeInsets.only(left:2.5,top: 1.85),
                                        width:120,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(35)
                                        ),
                                        child: const Center(
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
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0,right: 15,left: 5,bottom: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor
                                  ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                  ),
                                child: TextFormField(
                                  style:TextStyle(
                                    color: primaryColor
                                  ),
                                  enableSuggestions: true,
                                  controller: emailController,
                                  keyboardType: TextInputType.text,
                                  obscureText: false,
                                  decoration:const InputDecoration(
                                    helperStyle:  TextStyle(
                                      color: primaryColor
                                    ),
                                    contentPadding: EdgeInsets.only(right: 10),
                                    hintStyle: TextStyle(
                                      color: primaryColor
                                    ),
                                    hintText: "Email",
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.email,
                                        color: primaryColor,
                                      ),
                                    ),
                                    border: InputBorder.none
                                  ),
                                  validator: (value){
                                    value = emailController.text;
                                    if (value.isEmpty) {
                                      return 'Veuillez remplir le champ';
                                    }
                                    else{
                                      setState(() {
                                        user.email = value.toString();
                                      });
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0,right: 15,left: 5,bottom: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor
                                  ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                  ),
                                child: TextFormField(
                                  style:TextStyle(
                                    color: primaryColor
                                  ),
                                  controller: lastNameController,
                                  keyboardType: TextInputType.text,
                                  obscureText: false,
                                  decoration:const InputDecoration(
                                    helperStyle:  TextStyle(
                                      color: primaryColor
                                    ),
                                    contentPadding: EdgeInsets.only(right: 10),
                                    hintStyle: TextStyle(
                                      color: primaryColor
                                    ),
                                    hintText: "Nom",
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.person,
                                        color: primaryColor,
                                      ),
                                    ),
                                    border: InputBorder.none
                                  ),
                                  validator: (value){
                                    value = firstNameController.text;
                                    if (value.isEmpty) {
                                      return 'Veuillez remplir le champ';
                                    }
                                    else{
                                      setState(() {
                                        user.firstName = value.toString();
                                      });
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0,right: 15,left: 5,bottom: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor
                                  ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                  ),
                                child: TextFormField(
                                  style:TextStyle(
                                    color: primaryColor
                                  ),
                                  controller: firstNameController,
                                  keyboardType: TextInputType.text,
                                  obscureText: false,
                                  decoration:const InputDecoration(
                                    helperStyle:  TextStyle(
                                      color: primaryColor
                                    ),
                                    contentPadding: EdgeInsets.only(right: 10),
                                    hintStyle: TextStyle(
                                      color: primaryColor
                                    ),
                                    hintText: "Prenoms",
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.person,
                                        color: primaryColor,
                                      ),
                                    ),
                                    border: InputBorder.none
                                  ),
                                  validator: (value){
                                    value = lastNameController.text;
                                    if (value.isEmpty) {
                                      return 'Veuillez remplir le champ';
                                    }
                                    else{
                                      setState(() {
                                        user.lastName = value.toString();
                                      });
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0,right: 15,left: 5,bottom: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor
                                  ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                  ),
                                child: TextFormField(
                                  style:TextStyle(
                                    color: primaryColor
                                  ),
                                  controller: phoneController,
                                  keyboardType: TextInputType.text,
                                  obscureText: false,
                                  decoration:const InputDecoration(
                                    helperStyle:  TextStyle(
                                      color: primaryColor
                                    ),
                                    contentPadding: EdgeInsets.only(right: 10),
                                    hintStyle: TextStyle(
                                      color: primaryColor
                                    ),
                                    hintText: "Téléphone",
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.phone,
                                        color: primaryColor,
                                      ),
                                    ),
                                    border: InputBorder.none
                                  ),
                                  validator: (value){
                                    value = phoneController.text;
                                    if (value.isEmpty) {
                                      return 'Veuillez remplir le champ';
                                    }
                                    else{
                                      setState(() {
                                        user.phoneNumber = value.toString();
                                      });
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0,right: 15,left: 5,bottom: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor
                                  ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                  ),
                                child: TextFormField(
                                  style:TextStyle(
                                    color: primaryColor
                                  ),
                                  controller: pwdController,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration:const InputDecoration(
                                    contentPadding: EdgeInsets.only(right: 10),
                                    hintStyle: TextStyle(
                                      color: primaryColor
                                    ),
                                    hintText: "Mot de passe",
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.password,
                                        color: primaryColor,
                                      ),
                                    ),
                                    border: InputBorder.none
                                  ),
                                  validator: (value){
                                    value = pwdController.text;
                                     if (value.isEmpty) {
                                      return 'Veuillez remplir le champ';
                                    }
                                    else{
                                      setState(() {
                                        user.password = value.toString();
                                      });
                                      
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(top:5.0,right: 15,left: 5,bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor
                                  ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                  ),
                                child: TextFormField(
                                  style:TextStyle(
                                    color: primaryColor
                                  ),
                                  controller: pwdConfirmController,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration:const InputDecoration(
                                    contentPadding: EdgeInsets.only(right: 10),
                                    hintStyle: TextStyle(
                                      color: primaryColor
                                    ),
                                    hintText: "Confirmation du mot de passe",
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.password,
                                        color: primaryColor,
                                      ),
                                    ),
                                    border: InputBorder.none
                                  ),
                                  validator: (value){
                                    value = pwdConfirmController.text;
                                     if (value.isEmpty) {
                                      return 'Veuillez remplir le champ';
                                    }
                                    else if(pwdConfirmController.text != pwdController.text){
                                      return 'Les mots de passe ne correspondent pas';
                                    }
                                    else{
                                      setState(() {
                                      user.password = value.toString();
                                    });
                                    
                                    }
                                    return null;
                                  }
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10,bottom: 0),
                            width: 150,
                            child: ElevatedButton(
                              style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
                              shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                              backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
                            ),
                            onPressed: () async{
                              debugPrint("current state 1"+_formKey.currentState!.validate().toString());
                              if(_formKey.currentState!.validate()){
                                debugPrint("current state 2"+_formKey.currentState!.validate().toString());
                                var request = await userProvider.register(user);
                                debugPrint("request "+request.toString());
                                if(request["status"] == "success"){
                                  Navigator.pushAndRemoveUntil<void>(
                                    context,
                                    MaterialPageRoute<void>(builder: (BuildContext build)=>Login()),
                                    ModalRoute.withName('/'),
                                  );
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                }
                                else{
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(request["message"][0])));
                                }
                              }
                            
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
      ),
    );
  }
}