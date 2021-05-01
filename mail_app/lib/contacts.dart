import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class Contact extends StatelessWidget {
  String mail, name, phone;
  Contact(this.mail, this.name, this.phone);
  bool s = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),

      height: 90.0,
      //width: 370.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.purpleAccent,
      ),
      child: ListTile(
        leading: Image.asset('images/man.png'),
        minLeadingWidth: 20,
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.mail),
                Text(
                  mail,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone),
                Text(
                  phone,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
