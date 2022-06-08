import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Mainpage.dart';
import 'package:untitled1/Signup.dart';
import 'package:untitled1/auth.dart';

class HomeScreen extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        child:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black26,
          Colors.black87,
          Colors.blueAccent,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()),
                    child: Column(
                  children: [
                    SizedBox(height: 100),
                    Container(
                        padding: EdgeInsets.only(left: 1),
                        child: Text(
                          'Welcome to\nGrocery App',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 1),
                        height: 190,
                        child:
                            Image(image: AssetImage('assets/pngwing.com.png'))),
                    Container(
                        padding: EdgeInsets.only(left: 20, top: 80, right: 20),
                        child: Column(
                          children: [
                            TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                  prefixIcon: new Icon(Icons.email),
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.5)),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: new Icon(Icons.lock),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.5)),
                            ),
                            SizedBox(height: 60),
                            Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value) {
                                      Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Mainpage() ));
                                    }).onError((error, stackTrace) {
                                      print("Error ${error.toString()}");
                                    });
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blueAccent),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.red)),
                                )),
                            SizedBox(height: 10),
                            Column(children: [
                              Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    onPressed: () => Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Signup())),
                                    child: Text('Sign Up',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blueAccent)),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.red)),
                                  )),
                              Text(
                                  "Don't have an account?... Register now by clicking Sign up",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center)
                            ])
                          ],
                        ))
                  ],
                )))));
  }
}
