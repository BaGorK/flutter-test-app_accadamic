// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutterproject/drawer_widget.dart';
import 'package:flutterproject/list_view.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Login form"),
          backgroundColor: Color.fromARGB(255, 219, 219, 219),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.navigate_before),
        ),
        drawer: DrawerWidget(),
        body: ListViewPage(),
      ),
    );
  }
}
