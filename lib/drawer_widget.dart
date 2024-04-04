// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterproject/form_screen.dart';
import 'package:flutterproject/list_view_screen.dart';
import 'package:flutterproject/main.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 219, 219, 219),
            ),
            child: Text("Drawer header"),
          ),
          ListTile(
            title: Text('Home page'),
            onTap: () {
              // Action when Item 1 is tapped
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
          ),
          ListTile(
            title: Text('Login form page'),
            onTap: () {
              // Action when Item 2 is tapped
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormScreen();
              }));
            },
          ),
          ListTile(
            title: Text('List view'),
            onTap: () {
              // Action when Item 2 is tapped
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListViewScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
