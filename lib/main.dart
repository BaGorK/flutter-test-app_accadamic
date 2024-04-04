// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutterproject/drawer_widget.dart';
import 'package:flutterproject/form_screen.dart';
import 'package:flutterproject/icons_widget.dart';
import 'package:flutterproject/rich_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Home page of the app"),
          backgroundColor: Color.fromARGB(255, 219, 219, 219),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FormScreen();
            }));
          },
          child: Icon(Icons.login),
        ),
        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichTextWidget(),
              NetworkImage(),
              SizedBox(
                height: 50,
              ),
              IconsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class NetworkImage extends StatelessWidget {
  const NetworkImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ]),
        child: Column(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1661529515567-dcb300f41da5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvdCUyMGJ1cmdlcnxlbnwwfHwwfHx8MA%3D%3D",
              height: 200,
            ),
            Text(
              "Hot Burger",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Taste Our Hot Burger",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
