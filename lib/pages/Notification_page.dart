import 'package:flutter/material.dart';

class Notification_page extends StatefulWidget {
  const Notification_page({super.key});

  @override
  State<Notification_page> createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: '',
                  fontWeight: FontWeight.bold,
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
