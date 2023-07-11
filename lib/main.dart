import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
FirebaseAuth auth = FirebaseAuth.instance;

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
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

                      onPressed: () async {

                        /////로그인 로직 구현중(입력 파라미터를 받아서 검사)
                        try {
                          final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: "mjshin97@naver.com" ,
                              password: "111111"
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            print('Wrong password provided for that user.');
                          }
                        }
                        /////

                      },


                      child: Text('Login'),
                  )

                  // ElevatedButton(
                  //   onPressed: null,
                  //   child: Text('Login'),
                  // )

                ]

            )

        ),

      ),

    );

  }
}