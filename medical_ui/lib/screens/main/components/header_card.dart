
import 'package:flutter/material.dart';

Widget HeaderCard( BuildContext context )=> Padding(
  padding: const EdgeInsets.all(18.0),
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: 150.0,

    decoration: BoxDecoration(
        color: Color(0xfffbdcf0),
        borderRadius: BorderRadius.circular(40.0)
    ),
    child: Row(
      children: [
        Image(image: AssetImage("assets/images/secondary.png")),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("How do you feel?",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    )),
                Text("Fill out your medical card right now",

                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: double.infinity,
                  child: ElevatedButton(onPressed: ()=>{}, child: Text("Get Started"),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )),
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor: MaterialStateProperty.all(Color(0xff8a86e2))
                    ),),
                )
              ],
            ),
          ),
        )
      ],
    ),
  ),
);