import 'package:flutter/material.dart';

class Reset with ChangeNotifier{
  bool passwordVisible = false;
  boolvalue(){
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}