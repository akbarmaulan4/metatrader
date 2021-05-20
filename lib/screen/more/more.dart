import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.chevron_left_rounded, color: Colors.black87, size: 30,),
        title: Text('Setting', style: TextStyle(color: Colors.black87),),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Account'),
                subtitle: Text('Lorem ipsum dolor sit amet, consectetour'),
              ),
              ListTile(
                leading: Icon(Icons.notification_important_rounded),
                title: Text('Notification'),
                subtitle: Text('Lorem ipsum dolor sit amet, consectetour'),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.info),
                title: Text('About'),
                subtitle: Text('Lorem ipsum dolor sit amet, consectetour'),
              ),
              ListTile(
                leading: Icon(Icons.lock_open_rounded),
                title: Text('Show Full VPS'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
