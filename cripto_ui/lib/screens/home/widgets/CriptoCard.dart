
import 'package:exercise/model/Cripto.dart';
import 'package:flutter/material.dart';

Widget CriptoCard(Cripto cripto, BuildContext context) => Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
  child:   Container(
    decoration: BoxDecoration(
      border: Border.all(color : Colors.black26.withAlpha(20)),
      borderRadius: BorderRadius.circular(10)
    ),
    width: MediaQuery.of(context).size.width,
    height: 80.0,
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(cripto.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            )),
            Text("\$${cripto.value}",
               style: const TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0
               ) )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${cripto.siglas}/UTC",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              )),
            Row(
              children: [
                Icon(
                  cripto.state? Icons.arrow_drop_up_outlined:
                  Icons.arrow_drop_down_outlined,
                  color: cripto.state?Colors.green:Colors.red
                ),
                Text("\$${cripto.cost.toInt()}",
                    style:  TextStyle(
                        color: cripto.state?Colors.green:Colors.red,
                      fontWeight: FontWeight.bold
                    ))
              ],
            )
          ],
        )
      ],
    ),
  ),
);