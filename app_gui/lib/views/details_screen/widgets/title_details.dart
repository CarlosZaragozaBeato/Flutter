import 'package:app_gui/models/Plan.dart';
import 'package:flutter/material.dart';

Widget titleDetails(Plan plan) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(plan.title,
            style: const TextStyle(fontSize: 25.0, color: Colors.white)),
        const SizedBox(
          height: 10,
        ),
        Text(plan.subtitle,
            style: const TextStyle(fontSize: 15.0, color: Colors.white))
      ],
    );
