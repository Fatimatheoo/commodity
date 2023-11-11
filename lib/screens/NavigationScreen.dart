import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/vectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../provider/navbarprovider.dart';
import '../utilitis/colors.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Navbarprovider>(context,);
    return Scaffold(
      body: provider.currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentTab,
        onTap: (int index) {
          provider.currentTab = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppNavIcons.home,
                color: provider.currentTab == provider.currentTab ? AppTheme.secondarycolor : AppTheme.RGB), label: 'Home',),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppNavIcons.bell,
                  color: provider.currentTab == provider.currentTab ? AppTheme
                      .secondarycolor : AppTheme.RGB), label: 'label'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppNavIcons.profile,
                  color: provider.currentTab == provider.currentTab ? AppTheme
                      .secondarycolor : AppTheme.RGB), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.secondarycolor,
        // selectedIconTheme: IconThemeData(color: AppTheme.secondarycolor),
      ),
    );
  }
}