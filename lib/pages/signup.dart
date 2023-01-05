import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool pwstate = true;
  bool pwstate2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 214, 203, 203),
      // ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Color.fromARGB(0, 123, 168, 205),
                    backgroundImage: AssetImage('assets/car.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Signup to continue',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: '',
                      //fontWeight: bold,
                    ),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 50,
                  //padding: EdgeInsets.all(5),
                  child: TextField(
                    //controller: _name,
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
                SizedBox(height: 10, width: 300),
                Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 50,
                  //padding: EdgeInsets.all(5),
                  child: TextField(
                    //controller: _name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIcon: Icon(Icons.mail),
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Dancing',
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(height: 10, width: 300),
                Container(
                  color: Colors.white,
                  // padding: EdgeInsets.all(5),
                  // margin: EdgeInsets.all(10),
                  height: 50,
                  child: TextField(
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
                      hintText: '********',
                    ),
                  ),
                ),
                SizedBox(height: 10, width: 300),
                Container(
                  color: Colors.white,
                  // padding: EdgeInsets.all(5),
                  // margin: EdgeInsets.all(10),
                  height: 50,
                  child: TextField(
                    obscureText: pwstate2,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),

                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            pwstate2 = !pwstate2;
                            //print(pwstate);
                          });
                        },
                        icon: Icon(
                            pwstate2 ? Icons.visibility : Icons.visibility_off),
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
                      labelText: 'Confirm Password',
                      hintText: '*********',
                    ),
                  ),
                ),
                SizedBox(height: 10, width: 300),
                Container(
                  alignment: Alignment.center,
                  // height: 50,
                  // width: 300,
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      //or OutlinedButton
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Homepage();
                          }),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        //minimumSize:  ,
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
