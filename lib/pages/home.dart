import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Transaction_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/menu_page.dart';

import 'Notification_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  List<Widget> _Options = <Widget>[
    home_page(),
    //Notification_page(),
    Transaction_page(),
    menu_page(),
  ];
  void _tapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 197, 182, 182),
      body: Center(
        child: _Options.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        mouseCursor: SystemMouseCursors.grab,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(size: 30),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //1st
            backgroundColor: Colors.red,
            icon: Icon(
              Icons.home_outlined,
              color: Colors.green,
            ),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   backgroundColor: Colors.red,
          //   //2nd
          //   icon: Icon(
          //     Icons.notifications_outlined,
          //     color: Colors.green,
          //   ),
          //   label: 'Notifications',
          // ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            //3rd
            icon: Icon(
              Icons.payments_outlined,
              color: Colors.green,
            ),
            label: 'Transactions',
          ),
          // BottomNavigationBarItem(
          //   //4th
          //   icon: Icon(
          //     Icons.person_outline,
          //     color: Colors.green,
          //   ),
          //   label: 'Profile',
          // ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            //4th
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.green,
            ),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _tapped,
      ),
    );
  }
}
