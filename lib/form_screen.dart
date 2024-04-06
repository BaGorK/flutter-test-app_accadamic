// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutterproject/drawer_widget.dart';
import 'package:flutterproject/Form.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 211, 191, 215),
          currentIndex: 1,
          onTap: (int index) {
            if (index == 0) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormScreen();
              }));
            } else if (index == 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormScreen();
              }));
            } else if (index == 2) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormScreen();
              }));
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home page',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'login form',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu),
              label: 'list of foods',
            ),
          ],
        ),
        body: MyFormPage(),
      ),
    );
  }
}
