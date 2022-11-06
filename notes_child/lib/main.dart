import 'package:flutter/material.dart';
import 'package:notes_child/model/note.dart';
import 'package:notes_child/pages/add_edit_note.dart';
import 'package:notes_child/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
          primaryColor: const Color(0xffE97171),
          scaffoldBackgroundColor: const Color(0xff3E3E3E),
          appBarTheme:
              const AppBarTheme(color: Colors.transparent, elevation: 0.0)),
      home: const HomePage(),
      routes: {AddEditNote.routeName: (ctx) => const AddEditNote()});
}
