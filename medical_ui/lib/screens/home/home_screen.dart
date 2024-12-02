import 'package:exercise/screens/main/main_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {


  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex:2,
            child: Container(
              child: Image(image: AssetImage("assets/images/principal.png")),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                    const  Text("All specialists in one app",
                        style:  TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                        )),
                      const SizedBox(height: 15,),
                     Container(
                       width: MediaQuery.of(context).size.width/1.35,
                       child: const Text("Find your doctor and make an appointment with one tap",
                           style:  TextStyle(
                             fontSize: 18.0,
                           )),
                     ),
                    ],
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MainScreen()),
                          );
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                )),
                            elevation: MaterialStateProperty.all(0.0),
                            backgroundColor: MaterialStateProperty.all(Color(0xff8a86e2))
                        ), child:   const Padding(
                           padding: EdgeInsets.symmetric(vertical:20.0),
                          child: Text("Get Started"),
                        )),
                      )
                ],
              ),
            ),
          )
        ],
      )
      
      
    );
  }
}
