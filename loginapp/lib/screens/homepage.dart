import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home page"),
      ),
      body: Column(children: [
        const SizedBox(
          height: 25,
        ),
        Center(
          child: Text(
            "welcome $username",
            style: TextStyle(fontSize: 25),
          ),
        )
      ]),
    );
  }
}
