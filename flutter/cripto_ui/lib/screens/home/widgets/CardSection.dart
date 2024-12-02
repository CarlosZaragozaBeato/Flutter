import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:exercise/model/Cripto.dart';

import 'package:flutter/material.dart';
import '../../../model/Actions.dart';
import '../../../model/CreditCard.dart';


Widget CardSection(List<CreditCard> cards) {


  List<BackActions> listActions = [
    BackActions(
      name :"Deposite",
      icon : Icons.account_balance,
    ),
    BackActions(
      name :"WithDraw",
      icon : Icons.account_balance,
    ),
    BackActions(
      name :"More",
      icon : Icons.account_balance,
    ),
  ];





  return Container(
    child: CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        viewportFraction: .85
      ),
      items: cards.map((e) => Padding(
        padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        child: Container(
              padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(e.color)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(e.name,
                      style: const TextStyle(color:Colors.white70)),
                    const SizedBox(height: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text("Balance",
                            style: TextStyle(
                              color :  Colors.white70,
                              fontSize: 15.0
                            )),
                        Text("\$${e.balance}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40.0
                          )),
                        const Text("/USD",
                          style: TextStyle(
                            color:Colors.white70
                          ))
                      ]),

                      const SizedBox(height: 20.0),
                      Expanded(child:
                      ListView(
                        children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 Icon(listActions[0].icon,
                                     color: Colors.white),
                                 Text(listActions[0].name,
                                     style: const TextStyle(color: Colors.white))
                               ],
                             ),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 Icon(listActions[1].icon,
                                     color: Colors.white),
                                 Text(listActions[1].name,
                                     style: const TextStyle(color: Colors.white))
                               ],
                             ),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 Icon(listActions[2].icon,
                                     color: Colors.white),
                                 Text(listActions[2].name,
                                  style: const TextStyle(color: Colors.white))
                               ],
                             )
                           ],
                         )
                        ],
                      ))
                      ],
                    )


        ),
      )).toList(),

    ),
  );

}