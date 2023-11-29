import 'package:flutter/material.dart';

class Info with ChangeNotifier{
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirm = TextEditingController();
  bool passwordVisible = false;
  boolvalue(){
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}