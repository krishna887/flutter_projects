import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'todo app',
    home: TodoApp(),
  ));
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  String value = '';
  var listTodo = [''];

  addTodo(String item) {
    setState(() {
      listTodo.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO APP'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addTodo(value);
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: listTodo.length,
            itemBuilder: ((context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        onChanged: (val) {
                          value = val;
                        },
                        decoration: InputDecoration(hintText: "add item"),
                      ),
                    )
                  : ListTile(
                      leading: Icon(Icons.book_online),
                      title: Text(
                        '${listTodo[index]}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
            })));
  }
}
