import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const scoreApp());
}

class scoreApp extends StatelessWidget {
  const scoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: scoreHome(),
    );
  }
}

class scoreHome extends StatefulWidget {
  const scoreHome({super.key});

  @override
  State<scoreHome> createState() => _scoreHomeState();
}

class _scoreHomeState extends State<scoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var number2 = number;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score Changer'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child: Icon(Icons.restore_outlined),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        SizedBox(
          height: 25,
        ),
        Center(
            child: Text(
          "score is",
          style: TextStyle(
              color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
        )),
        Center(
            child: Text(
          number2.toString(),
          style: TextStyle(
              color: Colors.green, fontSize: 125, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 25,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              child: Text(
                'increase',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: increaseNumber,
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              )),
          SizedBox(
            width: 20,
          ),
          TextButton(
            child: Text(
              'decrease',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: decreaseNumber,
            style: TextButton.styleFrom(backgroundColor: Colors.red),
          )
        ]),

        // RaisedButton(
        // child: Text('increase '),onPressed:
        //  )
        SizedBox(
          height: 200,
        ),
        const Text('developed by:Krishna chaulagain')
      ]),
    );
  }
}
