import 'package:exercise/screens/home/widgets/ForYouItems.dart';
import 'package:flutter/material.dart';



Widget ForYouSection (BuildContext context)=> Container(
  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
  width: MediaQuery.of(context).size.width,
  child:   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text("For You",
          style:  TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )),

           Container(
             width: MediaQuery.of(context).size.width,
             height: 110,
             child: ListView(
               scrollDirection: Axis.horizontal,
              children: [
                ForYouItem("Learn Cripto", "Earn Cripto",Icons.book,"Learn Cripto"),
                ForYouItem("DCA","Simulation",Icons.calendar_month,"Learn Cripto"),
                ForYouItem("Join","Community",Icons.people,"Learn Cripto")
              ],
          ),
           ),


      ],
),
);

