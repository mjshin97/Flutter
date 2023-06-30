import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
              "Login"
          ),
        ),

        body: Container(
          color: Colors.blueAccent,

          height: 400,
          width:  400,

          child : Column(
            children:[
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'ID please'
                ),
              ),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Password'
                ),
              ),
              
              ElevatedButton(
                onPressed: null,
                child: Text('Login'),
              )

            ]

          )

        ),

      ),

    );

  }
}