import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../repository/readuserdata.dart';
import '../../login/view/loginscreen.dart';

class Register with ChangeNotifier{

  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirm = TextEditingController();
  bool passwordVisible = false;
  boolvalue(){
    passwordVisible = !passwordVisible;
    notifyListeners();
  }

  RegisterUser(
      BuildContext context,String email,String password,String username){
    var useremail = email;
    var userpassword = password;
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email : useremail,
        password : userpassword
    );
    print('User cREATED');
    SignUpUser( useremail,username).then((value) =>
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=> LoginScreen())));
  }
}