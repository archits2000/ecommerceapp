import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _Signup();
  }
}

class _Signup extends State<Signup> {
  final auth = FirebaseAuth.instance;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
      Colors.black26,
      Colors.black87,
      Colors.blueAccent,
    ],begin:Alignment.topCenter,end:Alignment.bottomCenter)),
    child: Scaffold(
      appBar: AppBar(title: Text('Register',style: TextStyle(fontSize:30 ),),centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          child:Column(
          children: [
            SizedBox(height: 80),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
                child:
            TextFormField(
              controller: name,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                value = name.toString();
              },
              decoration: InputDecoration(
                prefixIcon: new Icon(Icons.account_box),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true,
                hintText: 'Enter your name here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0)
                )
              ),
            )),
            SizedBox(height:20),
            Container(padding: EdgeInsets.only(left:20,right:20),
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
              onChanged: (value){
                    value = email.toString();
              },
              decoration: InputDecoration(
                  prefixIcon: new Icon(Icons.email),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(30.0)),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5)),
            )),
            SizedBox(height:20),
            Container(padding:EdgeInsets.only(left:20,right:20),
                child:TextFormField(
                  controller: password,
              validator: (value) {
                    if(value!.isEmpty){
                      return 'Please Enter Password';
                    }
              },
                  onChanged: (value){
                    value = password.toString();
                  },
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: new Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(30.0)),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5)),
            )),
            SizedBox(height:40),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () async {
                    try{
                      await auth.createUserWithEmailAndPassword(email: email.text, password: password.text);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully Registered , you can login now'),
                      duration: Duration(seconds: 5),),
                      );
                      Navigator.of(context).pop();
                    }
                    on FirebaseAuthException catch (e) {
                      showDialog(context: context, builder: (ctx) => AlertDialog(title: Text('Ops! Registration Failed'),content: Text('${e.message}'),));
                    }
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 20, color: Colors.blueAccent),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(
                          Colors.red)),
                )),
          ],
      )),
      )
    )
    ;
  }

}

