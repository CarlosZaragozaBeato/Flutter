import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_udemy/model/note.dart';
import 'package:notes_udemy/pages/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>('notes');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xff424242),
          appBarTheme: const AppBarTheme(
              actionsIconTheme: IconThemeData(color: Color(0xfff9f2ed)),
              backgroundColor: Color(0xff816897),
              elevation: 0.0)),
      home: const HomePage());
}
