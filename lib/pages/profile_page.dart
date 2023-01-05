import 'package:flutter/material.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Profile Page',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: '',
                  //fontWeight: bold,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("back"))
          ],
        ),
      ),
    );
  }
}
