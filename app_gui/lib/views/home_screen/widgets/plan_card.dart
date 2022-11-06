import 'package:app_gui/models/Plan.dart';
import 'package:flutter/material.dart';

import '../../details_screen/details_screen.dart';

Widget planCard(Plan plan, BuildContext context) => ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
              opacity: 0.3,
            ),
            color: Color(plan.color)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plan.title,
              style: const TextStyle(
                  fontSize: 22.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              softWrap: true,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  plan.icon,
                  color: Colors.white,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(DetailsScreen.routeName, arguments: plan.id);
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff4f5df4))),
                  child: const Text('start'),
                )
              ],
            )
          ],
        ),
      ),
    );
