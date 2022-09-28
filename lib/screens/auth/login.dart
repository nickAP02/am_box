import 'package:am_box/models/user.dart';
import 'package:am_box/screens/auth/register.dart';
import 'package:am_box/screens/home/home.dart';
import 'package:am_box/services/local_storage.dart';
import 'package:am_box/services/providers/user_provider.dart';
import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LocalStorage localStorage =  LocalStorage();
  User user = User(email: "", firstName: "", lastName: "", phoneNumber: "", password: "");
  final  _formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:70.0),
              child: const Text(
                "CONNEXION",
                style: TextStyle(
                    color:primaryColor
                ),
              ),
            ),
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
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.only(top:18.0,left: 10),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 50,left: 10,)),
                          Row(
                            children: [
                              GestureDetector(
                                onTap:(){
                                  Navigator.pushAndRemoveUntil<void>(
                                    context,
                                    MaterialPageRoute<void>(builder: (BuildContext build)=>Register()),
                                    ModalRoute.withName('/'),
                                  );
                                },
                                child: Stack(
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
                                ),
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
                                style:TextStyle(
                                    color: Colors.white
                                  ),
                                controller: phoneController,
                                keyboardType: TextInputType.text,
                                obscureText: false,
                                decoration:const InputDecoration(
                                  helperStyle: TextStyle(
                                    color: Colors.white
                                  ),
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
                                style:TextStyle(
                                    color: Colors.white
                                  ),
                                controller: pwdController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration:const InputDecoration(
                                  helperStyle: TextStyle(
                                    color: Colors.white
                                  ),
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
                            onPressed: ()async{
                              if(_formKey.currentState!.validate()){
                                //debugPrint("current state 2"+_formKey.currentState!.validate().toString());
                                var request = await userProvider.login(user);
                                //debugPrint("request "+request.toString());
                                if(request["status"] == "success"){
                                    debugPrint("token "+request["data"]["access_token"].toString());
                                    debugPrint("user "+request["data"]["userInfo"].toString());
                                    // debugPrint("user login "+userProvider.userLogin.toString());
                                    // debugPrint("user data "+localStorage.getName().toString());
                                    //debugPrint("pref "+userProvider.username.toString());
                                    if(userProvider.userLogin==null){
                                      localStorage.setName(request["data"]["userInfo"]["nom"].toString());
                                      localStorage.setFirstName(request["data"]["userInfo"]["prenom"].toString());
                                      localStorage.setEmail(request["data"]["userInfo"]["email"].toString());
                                      localStorage.setPhoneNumber(request["data"]["userInfo"]["telephone"].toString());
                                      localStorage.setRole(request["data"]["userInfo"]["role"].toString());
                                      localStorage.setToken(request["data"]["access_token"].toString());
                                      debugPrint("pref username "+localStorage.getFirstName().toString());
                                      setState(() {
                                        Navigator.pushAndRemoveUntil<void>(
                                          context,
                                          MaterialPageRoute<void>(builder: (BuildContext build)=>Home()),
                                          ModalRoute.withName('/'),
                                        );
                                      });
                                    }
                                    else{
                                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Une erreur s'est produite, reprendre la saisie")));
                                    }

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
      ),
    );
  }
}