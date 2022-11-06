import 'package:flutter/material.dart';


Widget ForYouItem(String text,String text2, IconData icon, String selected) => Padding(
  padding: const EdgeInsets.all(5.0),
  child:   Container(
    padding: const EdgeInsets.all(8.0),
    width: 110,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: text == selected ?
            Color(0xff2476f9):
            Colors.white
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            color: text == selected ?
            Colors.white:
            const Color(0xff2476f9)),
        const SizedBox(height: 20.0),
        Text(text,
        style:  TextStyle(
            color: text == selected ?
             Colors.white:
              Colors.black
        )),
        Text(text2,
        style:  TextStyle(
            color: text == selected ?
            Colors.white:
            Colors.black
        ))
      ],

    ),

  ),
);