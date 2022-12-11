import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
              children: [
                const Text("welcome"),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name cant be Empty";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Name:",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cant be Empty";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Password:",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print("forgot password clicked");
                    },
                    child: Text("Forgot Password"),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      print("Login button  clicked");
                      // if (_formKey.currentState!.validate()) {}
                      if (!_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Validate the form first"),
                            action: SnackBarAction(
                              label: "Retry",
                              onPressed: () {
                                print("retry button pressed");
                              },
                            ),
                          ),
                        );
                      } else {
                        Fluttertoast.showToast(
                            msg: "This is Center Short Toast",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    child: Text("LOGIN")),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "by continuing you agree to our ",
                            children: [
                          TextSpan(
                              text: "  terms and conditions ",
                              style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl;
                                }),
                          TextSpan(text: "and"),
                          TextSpan(
                              text: "  privacy policy ",
                              style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchUrl;
                                })
                        ]))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String link) async {
    var url = Uri.parse('https://www.google.com');
    if (!await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch ';
    }
  }
}
