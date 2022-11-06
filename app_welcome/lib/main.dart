import 'package:app_welcome/pages/LoginPage.dart';
import 'package:app_welcome/pages/RegisterPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DWelcomePageemo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

String imagePath = "images/welcome1.png";
bool currentPath = true;
int counterImage = 0;

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void changeImage() {
    setState(() {
      currentPath = !currentPath;

      if (currentPath) {
        imagePath = "images/welcome1.png";
      } else {
        imagePath = "images/welcome2.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Welcome App"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              icon: const Icon(Icons.navigate_before)),
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const RegisterPage();
                }));
              },
              icon: const Icon(Icons.navigate_next))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent),
                        onPressed: () => changeImage(),
                        child: const Text("Change Image")),
                    Text("The total of images is $counterImage",
                        style: const TextStyle(
                            fontSize: 15, color: Colors.blueAccent))
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent),
                        onPressed: () => {
                              setState(() {
                                counterImage++;
                              })
                            },
                        child: const Text("+1")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent),
                        onPressed: () => {
                              setState(() {
                                if (counterImage > 0) {
                                  counterImage--;
                                }
                              })
                            },
                        child: const Text("-1")),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Column(
                children: List.generate(
              counterImage,
              (index) => Center(child: Image.asset(imagePath)),
            ))
          ],
        ),
      ),
    );
  }
}
