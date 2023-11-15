import 'package:commodity/repository/readuserdata.dart';
import 'package:commodity/screens/Auth/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier{

   RegisterUser(BuildContext context,String email,String password,String username){
    var useremail = email;
    var userpassword = password;
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email : useremail,
        password : userpassword
      );
    print('User cREATED');
    SignUpUser( useremail,username).then((value) =>
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen())));
  }
}