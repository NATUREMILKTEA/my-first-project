import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
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
  int _counter = 0;
  bool _secureText = true;
  TextEditingController _nameController = TextEditingController();

  void _incrementCounter() {
    setState(() {
   
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Username:'),
                padding: EdgeInsets.all(20.0),
              ),
              
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Tên đăng nhập :3",
                  //labelText: "Username",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              
              Container(
                child: Text('Password:'),
                padding: EdgeInsets.all(20.0),
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "Mật khẩu",
                  
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                  // suffixIcon: IconButton(icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                  // onPressed: () {
                  //   setState(() {
                  //     _secureText = !_secureText;
                  //   });
                  // },
                  //),
                   border: OutlineInputBorder()
                ),
                obscureText: _secureText,                
              ),
              
              SizedBox(
                height: 16,
              ),
              
              OutlinedButton(
                onPressed: () {},                
                child: Text(
                  "Sign In",
                  
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
                
                style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 
                )
                ),
              ),
            ],
          ),
        ),
      ),
  
    );
    
  }

}
