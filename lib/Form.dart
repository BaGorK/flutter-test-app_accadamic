// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, constant_identifier_names
import 'package:flutter/material.dart';

enum SingingCharacter { Male, Female }

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  bool _isChecked = false;
  SingingCharacter? _character = SingingCharacter.Male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 20,
          height: 50,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.person,
              color: Colors.teal,
            ),
            hintText: "Enter you name",
          ),
        ),
        SizedBox(
          width: 20,
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.person,
              color: Colors.teal,
            ),
            hintText: "Enter you password",
          ),
        ),
        SizedBox(
          width: 20,
          height: 30,
        ),
        Row(
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            Text("Remeber this action"),
          ],
        ),
        ListTile(
          title: const Text('Male'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Male,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Female,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        SizedBox(
          width: 20,
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            // Add your onPressed functionality here
            print('Button pressed');
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: 20, vertical: 15), // Button padding
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Button border radius
            ),
            textStyle: TextStyle(
              fontSize: 16, // Text size
              fontWeight: FontWeight.bold, // Text weight
            ),
          ),
          child: Text('Submit the Form'), // Button text
        ),
      ],
    );
  }
}
