import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_app/dashboard.dart';
import 'package:mail_app/login.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignupState();
  }
}

class SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(38, 41, 38, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Mail App',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(padding: EdgeInsets.only(bottom: 80)),
                Column(
                  children: [
                    TextFormField(
                      cursorHeight: 30,
                      cursorColor: Colors.purple,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                                style: BorderStyle.solid)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                                style: BorderStyle.solid)),
                        hintText: 'Enter Username',
                        hintStyle:
                            TextStyle(fontSize: 25.0, color: Colors.grey),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 50)),
                    TextFormField(
                      cursorHeight: 30,
                      cursorColor: Colors.purple,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                                style: BorderStyle.solid)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                                style: BorderStyle.solid)),
                        hintText: 'Enter Mail',
                        hintStyle:
                            TextStyle(fontSize: 25.0, color: Colors.grey),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 50)),
                    TextFormField(
                      cursorHeight: 30,
                      cursorColor: Colors.purple,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                                style: BorderStyle.solid)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                                style: BorderStyle.solid)),
                        hintText: 'Enter Strong Password',
                        hintStyle:
                            TextStyle(fontSize: 25.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 80)),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 40.0),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
