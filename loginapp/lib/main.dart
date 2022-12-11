import 'package:flutter/material.dart';
import 'screens/loginpage.dart';

void main(List<String> args) {
  runApp(Loginapp());
}

class Loginapp extends StatelessWidget {
  const Loginapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'loginapp',
      home: loginpage(),
    );
  }
}
