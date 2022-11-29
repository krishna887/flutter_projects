import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile app",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile App"),
      ),
      body: Column(children: [
        SizedBox(height: 10),
        Center(
          child: Image.asset(
            "images/arjun.jpg",
            height: 250,
            width: 250,
          ),
        ),
        Text(
          'Name: Arjun Prasad chaulagain',
          style: TextStyle(fontSize: 24, color: Colors.red),
        ),
        Text(
          'Email: apchaulagain@gmail.com',
          style: TextStyle(
              fontSize: 24, color: Colors.green, fontStyle: FontStyle.italic),
        ),
        Text(
          'Address: Sindhupalchok melemchi',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        SizedBox(
          height: 50,
        ),
        const Text('developed by:Krishna chaulagain')
      ]),
    ),
  ));
}
