import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_app/emailContent.dart';

// ignore: camel_case_types
class emailContainer extends StatelessWidget {
  final int index;
  emailContainer({
    this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.purpleAccent,
      ),
      child: ListTile(
          leading: Image.asset('images/iconfinder_icon-email_211660.png'),
          minLeadingWidth: 20,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sender: ${Email.sender[index]}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Content: '${Email.emails[index]}'")
            ],
          )),
    );
  }
}
