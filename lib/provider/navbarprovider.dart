import 'package:commodity/screens/AlertScreen.dart';
import 'package:commodity/screens/Profile/Profile.dart';
import 'package:flutter/material.dart';
import '../screens/HomeScreen.dart';

class Navbarprovider with ChangeNotifier{

  var _currentTab = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const AlertScreen(),
    const Profile()
  ];

  set currentTab(var tab){_currentTab = tab;notifyListeners();}
  get currentTab => _currentTab;
  get currentScreen => _screens[_currentTab];
}
