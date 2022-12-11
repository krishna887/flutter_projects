// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:loginapp/screens/homepage.dart';

TextStyle mystyle = TextStyle(fontSize: 25);

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernamefield = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
    final passwordfield = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
    final myloginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {
          if (username == "krishna" && password == "password") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homepage(username: username)));
          } else {
            print("login failed");
          }
        },
        // ignore: sort_child_properties_last
        // ignore: prefer_const_constructors
        child: Text(
          "login",
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
      ),
    );
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ignore: prefer_const_constructors
                      Icon(
                        Icons.supervised_user_circle_sharp,
                        size: 100,
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 100,
                      ),
                      usernamefield,
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 10,
                      ),
                      passwordfield,
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 10,
                      ),
                      myloginButton
                    ]),
              ],
            )),
      )),
    );
  }
}
