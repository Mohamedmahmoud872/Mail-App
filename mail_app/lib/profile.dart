import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Image.network(
                'https://icon-library.com/images/profile-icon/profile-icon-22.jpg',
                color: Colors.purpleAccent,
              ),
              Text(
                'mymail@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 100,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              FlatButton(
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_add_alt_1_outlined,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      Text('Add New Account',
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40)),
              FlatButton(
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      Text('Edit Profile',
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40)),
              FlatButton(
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      Text('Log Out',
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
