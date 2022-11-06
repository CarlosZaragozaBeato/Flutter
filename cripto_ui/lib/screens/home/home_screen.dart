import 'package:exercise/model/CreditCard.dart';
import 'package:exercise/model/Cripto.dart';
import 'package:exercise/screens/home/widgets/CardSection.dart';
import 'package:exercise/screens/home/widgets/CriptoCard.dart';
import 'package:exercise/screens/home/widgets/ForYouSection.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);



  List<CreditCard> creditCards =  [
    CreditCard(balance: 1000,
          name: "VISA",
          color: const Color(0xff293462).value),
    CreditCard(balance: 2000,
          name: "Mastercard",
          color: const Color(0xff554994).value),
    CreditCard(balance: 3000,
          name: "Liberty",
          color: const Color(0xff42032C).value),
    CreditCard(balance: 4000,
          name: "Flag",
          color: const Color(0xff1C3879).value)
  ];

  List<Cripto> listCripto = const [
    Cripto(name: "Bitcoin",siglas: "BTC",state: true,value: 0.01123, cost:669.53),
    Cripto(name: "Ethereum",siglas: "ETH",state: true,value: 0.14, cost: 623.2),
    Cripto(name: "Solana",siglas: "SOL",state: false,value: 2.68, cost: 568.62),
    Cripto(name: "Cardano",siglas: "ADA",state: false,value: 76.10, cost: 142.42),
    Cripto(name: "Hive",siglas: "HIVE",state: true,value: 11.4832, cost: 24.32)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Icon(Icons.add_home,
                        color: Colors.black),
        actions:  const [
          Padding(
            padding:  EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person,
              color: Colors.black),
          )
        ],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSection(creditCards),
            ForYouSection(context),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("My Portfolio",
                        style:  TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        )),
                    const SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            width:70,
                            padding: const EdgeInsets.all(8.0),
                            decoration:BoxDecoration(
                                color: Color(0xff2476f9),
                                borderRadius: BorderRadius.circular(50.0)
                            ),
                            child: Center(child: Text("Profit",
                                style: const TextStyle(
                                    color: Colors.white))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            width:70,
                            padding: const EdgeInsets.all(8.0),
                            decoration:BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(50.0)
                            ),
                            child: Center(child: Text("Loss",
                                style:  TextStyle(
                                    color: Colors.grey[200],
                                    fontWeight: FontWeight.bold))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            width:70,
                            padding: const EdgeInsets.all(8.0),
                            decoration:BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(50.0)
                            ),
                            child: Center(child: Text("24H",
                                style:  TextStyle(
                                    color: Colors.grey[200],
                                    fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      padding: const EdgeInsets.only(top: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: 400.0,
                      child: ListView.builder(itemBuilder: (context, index) => CriptoCard(listCripto[index], context),
                      itemCount: listCripto.length,),
                    )


                  ],
                )
            )
          ],
        ),
      ),


    );
  }
}
