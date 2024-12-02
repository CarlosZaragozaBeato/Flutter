import 'package:flutter/material.dart';

Widget titleSection(String name) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Good Morning, $name'),
        const SizedBox(height: 10),
        Text('We wish you a good day',
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5))
      ],
    );
