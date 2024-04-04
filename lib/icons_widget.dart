// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite,
          size: 50,
          color: Colors.amber,
        ),
        Icon(
          Icons.share,
          size: 50,
          color: Colors.amber,
        ),
        Icon(
          Icons.add,
          color: Colors.amber,
          size: 50.0,
        ),
      ],
    );
  }
}
