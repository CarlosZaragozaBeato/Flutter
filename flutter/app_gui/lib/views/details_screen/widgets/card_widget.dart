import 'package:app_gui/models/Plan.dart';
import 'package:flutter/material.dart';

Widget cardWidget(BuildContext context, Plan plan) => ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(
            color: Color(plan.color),
            image: const DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
              opacity: 0.3,
            )),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(plan.icon, color: Colors.white),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff4f5df4))),
            child: const Text('start'),
          )
        ]),
      ),
    );
