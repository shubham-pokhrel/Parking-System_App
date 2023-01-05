import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/tran_network.dart';

import '../models/transaction_get.dart';

class Transaction_page extends StatefulWidget {
  const Transaction_page({super.key});

  @override
  State<Transaction_page> createState() => _Transaction_pageState();
}

class _Transaction_pageState extends State<Transaction_page> {
  List<Posts>? posts;
  bool isloaded = false;
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  getData() async {
    posts = await NetworkHelper().getposts();
    if (posts != Null) {
      setState(() {
        isloaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(5),
            child: Text(
              'Transactions',
              style: TextStyle(
                fontSize: 15,
                fontFamily: '',
                //fontWeight: bold,
              ),
            ),
          ),
          Visibility(
            visible: isloaded,
            child: Container(
              color: Colors.green,
              child: ListView.builder(
                itemCount: posts?.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      posts![index].title ?? 'Hi',
                    ),
                  );
                },
              ),
            ),
            replacement: Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }
}
