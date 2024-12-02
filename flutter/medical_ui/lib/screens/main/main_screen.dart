import 'package:exercise/models/Doctors.dart';
import 'package:exercise/screens/main/components/list_profesions.dart';
import 'package:flutter/material.dart';
import '../../models/profesions.dart';
import './components/header_card.dart';
import 'components/text_input_custom.dart';

class MainScreen extends StatefulWidget {
  static const routeName = "./main_screen";

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Profesions> listOfProfesions = [
    Profesions(name: "Dentist", icon: Icons.medical_services),
    Profesions(name: "Surgeon", icon: Icons.medical_services),
    Profesions(name: "Therapy", icon: Icons.medical_services),
    Profesions(name: "Dentist", icon: Icons.medical_services),
    Profesions(name: "Surgeon", icon: Icons.medical_services),
    Profesions(name: "Therapy", icon: Icons.medical_services),
  ];

  List<Doctors> listOfDoctors = [
    Doctors(name:"Dr. Albert Flores", rating: 4.8, charge: "Surgeon"),
    Doctors(name:"Dr. Albert Flores", rating: 4.8, charge: "Surgeon"),
    Doctors(name:"Dr. Albert Flores", rating: 4.8, charge: "Surgeon"),
    Doctors(name:"Dr. Albert Flores", rating: 4.8, charge: "Surgeon")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title:  SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello,",
                 style:  TextStyle(color: Colors.black.withAlpha(950),
                 fontSize: 15.0)),
                const SizedBox(height: 7.50,),
                Text("Jerome Bell",
                style: const TextStyle(color: Colors.black,
                  fontSize: 25.0))
              ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
          child: Icon(Icons.person,
            color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          HeaderCard(context),
          TextInputCustom(context),
          SizedBox(height: 10,),
          ListProfesions(context, listOfProfesions),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Doctor List",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500
                      )),
                    TextButton(onPressed: ()=>{}, child: Text("See all",
                      style: const TextStyle(
                        color:Colors.grey
                      )))
                  ],
                ),
                Container(

                  width: MediaQuery.of(context).size.width,
                  height: 150.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 150.0,
                        height: 150.0,
                        color: Color(0xfff5f6ff),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffc6ccf8),
                                  borderRadius: BorderRadius.circular(60.0)
                                ),
                                padding: const EdgeInsets.all(8.0),
                                width: 50,
                                height: 50.0,
                                child: Icon(Icons.person),
                              ),
                            ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,
                                    color: Colors.yellow,
                                    size: 15.0,),
                                  Text(listOfDoctors[index].rating.toString(),
                                  style: const TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                        Text(listOfDoctors[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                            Text(listOfDoctors[index].charge)
                          ],
                        ),
                      ),
                    ),
                  itemCount:listOfDoctors.length ,),
                )
              ],
            ),
          )

              ],
            ),
    );
  }
}
