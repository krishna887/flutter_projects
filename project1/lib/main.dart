import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: " demo static page ",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("password recover "),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'image/email img.png',
            height: 70,
            width: 70,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Check Your Mail',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text('we have send a password recover\n instruction to your mail'),
          TextButton(
              child: Text(
                'open email app',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: (() {}),
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 243, 33, 219),
              )),
          SizedBox(
            height: 20,
          ),
          Text('skip i will conform later'),
          SizedBox(
            height: 60,
          ),
          Text('Did not receive the mail? Check your spam folder\n'),
          Center(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                child: Row(
                  children: [
                    Text('or'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'try another email address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  ));
}
