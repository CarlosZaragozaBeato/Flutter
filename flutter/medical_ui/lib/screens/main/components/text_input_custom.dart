import 'package:flutter/material.dart';


Widget TextInputCustom(BuildContext context) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  child: Container(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Color(0xfff5f6ff),
        borderRadius: BorderRadius.circular(20.0)
    ),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search,
            color : Colors.grey),
        border: InputBorder.none,
        prefixIconColor: Colors.grey,
      ),
      cursorColor: Colors.grey,
    ),
  ),
);