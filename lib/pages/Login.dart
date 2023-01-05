import 'package:flutter/material.dart';
import 'package:flutter_application_1/DicePage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/Signup.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/services/tran_network.dart';

import '../models/login_post.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  bool pwstate = true;

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      appBar: AppBar(
        title: Text(
          'PARKING SYSTEM',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 67, 49, 49),
            //fontWeight: bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 214, 203, 203),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 214, 203, 203),
        child: ListView(
          //child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundColor: Color.fromARGB(0, 123, 168, 205),
              backgroundImage: AssetImage('assets/dp.png'),
            ),
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //   ),
            //   child: Image(
            //     image: AssetImage('assets/dp.png'),
            //   ),
            // ),
            ListTile(
              leading: Icon(
                Icons.account_box,
              ),
              title: Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MyApp();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.info,
              ),
              title: Text('About Company'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.contact_support,
              ),
              title: Text('Contact Us'),
              onTap: () {},
            ),
          ],
          //),
        ),
      ),
      body: SafeArea(
        child: //use SingleChildScrollView or ListView
            Form(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Color.fromARGB(0, 123, 168, 205),
                  backgroundImage: AssetImage('assets/car.png'),
                ),
                Container(
                  child: Text(
                    'SHUBHAM POKHREL',
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Dancing',
                      //fontWeight: bold,
                    ),
                  ),
                ),
                // Text(
                //   'PARKING SYSTEM',
                //   style: TextStyle(
                //     fontSize: 23,
                //     fontFamily: 'Pacifico',
                //   ),
                // ),
                //SizedBox(height: 20,)
                SizedBox(
                  width: 200,
                  child: Divider(
                    thickness: 4,
                    color: Colors.black,
                  ),
                ),
                Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 50,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIcon: Icon(Icons.person),
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Dancing',
                      ),
                      labelText: 'Username',
                    ),
                  ),
                ),
                //2nd row
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  height: 50,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: pwstate,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),

                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            pwstate = !pwstate;
                            //print(pwstate);
                          });
                        },
                        icon: Icon(
                            pwstate ? Icons.visibility : Icons.visibility_off),
                      ),
                      // onPressed: () {
                      //   // setState(() {
                      //   //   pwstate = !pwstate;},)

                      //     }),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Dancing',
                      ),
                      labelText: 'Password',
                      hintText: '.........',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 35,
                      child: TextButton(
                        //or OutlinedButton
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          //textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 23, 22, 22),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Container(
                //   child: Text(
                //     'Forget Password?',
                //     style: TextStyle(
                //       fontSize: 15,
                //       //fontFamily: '',
                //     ),
                //   ),
                // ),

                // Container(
                //   color: Colors.white,
                //   padding: EdgeInsets.all(8),
                //   margin: EdgeInsets.all(10),
                //   child: Row(
                //     children: [
                //       Icon(Icons.password),
                //       TextField(
                //         decoration: const InputDecoration(
                //           border: OutlineInputBorder(),
                //           labelText: 'User Name',
                //           hintText: '**********',
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    //or OutlinedButton
                    onPressed: () async {
                      var phoneData = phoneController.text.toString();
                      var passwordData = passwordController.text.toString();
                      //9849203704
                      //Nepal@12344
                      Login logindata = await NetworkHelper().getLogin(
                        phone: phoneData,
                        password: passwordData,
                      );

                      var status = logindata.status;
                      print(status);

                      if (status == 'success') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Homepage();
                        }));
                      } else {
                        //print('error');

                      }
                      // Login logindata = await NetworkHelper().getLogin();
                      // print(logindata.message);

                      // var status = logindata
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) {
                      //     return Homepage();
                      //   }),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      //minimumSize:  ,
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 35,
                  child: TextButton(
                    //or OutlinedButton
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Signup();
                        }),
                      );
                    },
                    child: Text(
                      "CREATE AN ACCOUNT",
                      style: TextStyle(
                          fontSize: 12, color: Color.fromARGB(255, 12, 12, 12)),
                    ),
                  ),
                ),

                // Container(
                //   padding: EdgeInsets.all(5),
                //   child: Text(
                //     'CREATE AN ACCOUNT',
                //     style: TextStyle(
                //       fontSize: 15,
                //       fontFamily: '',
                //       //fontWeight: bold,
                //     ),
                //   ),
                // ),

                // Container(
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Container(
                //       color: Colors.white,
                //       child: ListTile(
                //         leading: Icon(
                //           Icons.help,
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: Colors.black,
        //tooltip: 'Increment',
        child: Icon(Icons.message),
      ),
    );
  }
}
