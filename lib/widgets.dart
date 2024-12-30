import 'package:flutter/material.dart';

AppBar mainAppBar = AppBar(
  automaticallyImplyLeading: false,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Text(
            'ROLLERS GAMES HUB',
            style: TextStyle(
              fontFamily: 'Marujo',
            ),
          ),
          SizedBox(width: 10),
          Image.asset(
            'Assets/logo-red.png',
            width: 25,
            height: 25,
          )
        ],
      ),
      Icon(
        Icons.menu,
        size: 35,
      ),
    ],
  ),
);