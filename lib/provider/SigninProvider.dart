import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/NavigationScreen.dart';

class SigninProvider with ChangeNotifier{

  bool _loading = false;
  bool get loading => _loading;
  updateloading(bool value){
    _loading = value;
    notifyListeners();
  }

  SigninUser(BuildContext context,String email,String password) async {
    updateloading(true);
    var useremail = email;
    var userpassword = password;
    try {
      final User? firebaseUser = (
          await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: useremail,
              password: userpassword)).user;
      if (firebaseUser != null) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomNavigationBar()));
      } else {
        updateloading(true);
        print('Check your email');
      }
    } on FirebaseAuthException catch (e) {
      updateloading(true);
      print("Error $e");
    }
  }
}