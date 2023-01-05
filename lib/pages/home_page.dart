import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Notification_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 170,
            child: Container(
              alignment: Alignment.topLeft,
              color: Color.fromARGB(120, 228, 153, 228),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            IconButton(
                              // splashRadius: 10,
                              //color: Colors.grey,
                              iconSize: 50,
                              icon: ImageIcon(
                                AssetImage('assets/car.png'),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Profile_page();
                                  }),
                                );
                              },
                            ),
                            Text(
                              'Username',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: '',
                                //fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Notification_page();
                            }),
                          );
                        },
                        icon: Icon(Icons.notifications_outlined),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_balance_wallet),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  print('The image button has been tapped');
                },
                child: SizedBox(
                  width: 350,
                  height: 200,
                  child: Image.asset(
                    'assets/ad1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('The image button has been tapped');
                },
                child: SizedBox(
                  width: 350,
                  height: 200,
                  child: Image.asset(
                    'assets/dp.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
