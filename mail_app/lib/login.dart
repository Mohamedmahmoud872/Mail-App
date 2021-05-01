import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_app/dashboard.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Log In',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
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
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.purple,
                        size: 30,
                      ),
                      hintText: 'UserName',
                      hintStyle: TextStyle(fontSize: 25.0, color: Colors.grey),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 70)),
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
                      prefixIcon: Icon(
                        Icons.app_blocking_outlined,
                        color: Colors.purple,
                        size: 30,
                      ),
                      hintText: 'PassWord',
                      hintStyle: TextStyle(fontSize: 25.0, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  //
                  //   setState(() {
                  //     username =un.text;
                  //     password = pw.text;
                  //   });
                  //   for(int i = 0; i < info.userName.length;) {
                  //     // ignore: unrelated_type_equality_checks
                  //     if(username == info.userName[i] && password == info.passWord[i]) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashBoard(),
                    ),
                  );
                  //   }
                  // }
                },
                child: Container(
                  width: 200.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      'Log In',
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
    ));
  }
}
