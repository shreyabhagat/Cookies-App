import 'package:flutter/material.dart';

AppBar myAppBar(String title, IconData icon) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 27,
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {},
      )
    ],
  );
}
