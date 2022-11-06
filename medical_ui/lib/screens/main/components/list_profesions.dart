import 'package:exercise/models/profesions.dart';
import 'package:flutter/material.dart';

Widget ListProfesions(BuildContext context, List<Profesions> listOfProfesions) =>          Container(
  padding: const EdgeInsets.only(left:10.0),
  width: MediaQuery.of(context).size.width,
  height: 60.0,
  child: ListView.separated(
    physics: BouncingScrollPhysics(),
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index)=> Container(
        padding: const EdgeInsets.all(8.0),
        width: 100.0,
        decoration: BoxDecoration(
            color: Color(0xfff0f1fa),
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Row(
          children: [
            Icon(listOfProfesions[index].icon,
                color: Colors.deepPurple),
            SizedBox(width: 5.0,),
            Text(listOfProfesions[index].name)
          ],
        )
    ),
    itemCount: listOfProfesions.length,
    separatorBuilder: (context, index) => SizedBox(
      width:10,),
  ),
);