import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/notes_operation.dart';
import 'package:provider_example/screens/add_screen.dart';
import 'package:provider_example/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child:  MaterialApp(
        home:  HomeScreen(),
        routes: {
          AddScreen.routeName: (ctx) => AddScreen()
        },
      ),
    );
  }
}
