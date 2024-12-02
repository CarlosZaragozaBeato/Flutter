import 'package:app_gui/models/Categories.dart';
import 'package:app_gui/views/details_screen/details_screen.dart';
import 'package:app_gui/views/home_screen/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xff0f1e4b),
            appBarTheme:
                const AppBarTheme(elevation: 0.0, color: Colors.transparent)),
        home: HomeScreen(),
        routes: {DetailsScreen.routeName: (context) => DetailsScreen()},
        debugShowCheckedModeBanner: false,
      );
}
