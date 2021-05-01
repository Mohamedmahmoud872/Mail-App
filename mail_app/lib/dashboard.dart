import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_app/emailContent.dart';
import 'package:mail_app/profile.dart';

import 'contacts.dart';
import 'emails.dart';

class DashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<DashBoard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> bodyWidgets = [
      Center(
        child: ListView(
          children: [
            Contact('mohamed@gmail.com', 'Mohamed Mahmoud', '01004491320'),
            Contact('ahmed@gmail.com', 'Ahmed Ali', '0100455253'),
            Contact('Khaled@gmail.com', 'Khaled Osama', '01007851320'),
            Contact('sara@gmail.com', 'Sara Ahmed', '01234567892'),
          ],
        ),
      ),
      Center(
        child: ListView.builder(
            itemCount: Email.emails.length,
            itemBuilder: (context, i) => emailContainer(
                  index: i,
                )),
      ),
      Container(
        child: Profile(),
      )
    ];
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(38, 41, 38, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Mail App',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromRGBO(38, 41, 38, 0.9),
          child: ListView(
            children: [
              //color: Color.fromRGBO(38, 41, 38, 0.9),
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(38, 41, 38, 0.9),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail_outline,
                      size: 40,
                      color: Colors.purpleAccent,
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Text(
                      'Mail App',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    )
                  ],
                ),
              ),
              ListTile(
                minLeadingWidth: 30,
                trailing: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: Text(
                    '12 new',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                leading: Icon(
                  Icons.inbox,
                  color: Colors.white,
                ),
                title: Text(
                  'Primary',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                minLeadingWidth: 30,
                trailing: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueAccent),
                  ),
                  child: Text(
                    '99+ new',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                leading: Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.white,
                ),
                title: Text('Social', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                minLeadingWidth: 30,
                trailing: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow),
                  ),
                  child: Text(
                    '22 new',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                leading: Icon(
                  Icons.label_outlined,
                  color: Colors.white,
                ),
                title:
                    Text('Promotions', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                title:
                    Text('ALL LABELS', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.star_rate_outlined,
                  color: Colors.white,
                ),
                title: Text('Starred', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                trailing: Text('99+', style: TextStyle(color: Colors.white)),
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.label_important_outline,
                  color: Colors.white,
                ),
                title: Text('Important', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                trailing: Text('8', style: TextStyle(color: Colors.white)),
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                ),
                title: Text('Sent', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.cancel_schedule_send_outlined,
                  color: Colors.white,
                ),
                title: Text('Scheduled', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.outbox,
                  color: Colors.white,
                ),
                title: Text('Outbox', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                trailing: Text('12', style: TextStyle(color: Colors.white)),
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.drafts_outlined,
                  color: Colors.white,
                ),
                title: Text('Drafts', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                trailing: Text('99+', style: TextStyle(color: Colors.white)),
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.mail_outlined,
                  color: Colors.white,
                ),
                title: Text('All mail', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                trailing: Text('10', style: TextStyle(color: Colors.white)),
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.error_outline,
                  color: Colors.white,
                ),
                title: Text('Spam', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.restore_from_trash_outlined,
                  color: Colors.white,
                ),
                title: Text('Trash', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                title:
                    Text('GOOGLE APPS', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                ),
                title: Text('Calender', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                minLeadingWidth: 30,
                leading: Icon(
                  Icons.contacts_outlined,
                  color: Colors.white,
                ),
                title: Text('Trash', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      body: bodyWidgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purpleAccent,
        iconSize: 30.0,
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_outlined),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: 'E-Mails',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    ));
  }
}
