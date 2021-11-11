import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _secureText = true;

  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('images/background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.darken))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(padding: EdgeInsets.fromLTRB(50, 0, 50, 20)),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    )))
          ],
        ),
      ),
    );
  }
}
