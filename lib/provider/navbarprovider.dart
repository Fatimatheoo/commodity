import 'package:flutter/material.dart';
import '../views/alert/AlertScreen.dart';
import '../views/home/HomeScreen.dart';
import '../views/profile/Profile.dart';

class Navbarprovider with ChangeNotifier{

  var _currentTab = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const AlertScreen(),
     Profile()
  ];

  set currentTab(var tab){_currentTab = tab;notifyListeners();}
  get currentTab => _currentTab;
  get currentScreen => _screens[_currentTab];
}
