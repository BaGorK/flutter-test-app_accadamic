// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: RichText(
        text: TextSpan(
          text: "BEST ",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "BURGER ",
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
              ),
            ),
            TextSpan(
              text: "IN THE TOWN!",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
