import 'package:flutter/material.dart';

class menu_page extends StatefulWidget {
  const menu_page({super.key});

  @override
  State<menu_page> createState() => _menu_pageState();
}

class _menu_pageState extends State<menu_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Text(
        'Menu',
        style: TextStyle(
          fontSize: 15,
          fontFamily: '',
          //fontWeight: bold,
        ),
      ),
    );
  }
}
