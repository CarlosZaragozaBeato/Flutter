import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:notes_udemy/boxes.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_udemy/model/note.dart';
import 'package:notes_udemy/widgets/inputs_note.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future removeNote(Note note) async {
    final box = Boxes.getNotes();
    await note.delete();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text("NoteApp")),
        body: Column(
          children: [
            InputsNote(),
            ValueListenableBuilder<Box<Note>>(
                valueListenable: Boxes.getNotes().listenable(),
                builder: (context, box, _) {
                  final notes = box.values.toList().cast<Note>();
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400.0,
                      child: buildContent(notes));
                })
          ],
        ),
      );

  Widget buildContent(List<Note> notes) {
    if (notes.isEmpty) {
      return const Center(
        child: Text("No Notes..."),
      );
    } else {
      return Column(
        children: [
          const SizedBox(height: 24),
          Text(
            'Note',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.red[100],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: notes.length,
              itemBuilder: (BuildContext context, int index) {
                final transaction = notes[index];
                return buildNote(context, transaction);
              },
            ),
          ),
        ],
      );
    }
  }

  Widget buildNote(BuildContext context, Note note) {
    final date = DateFormat.yMMMd().format(note.time);

    return Card(
      color: Colors.purple[100],
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        title: Text(
          note.title,
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(date),
        subtitle: Text(
          note.description,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        children: [
          TextButton.icon(
            label: Text('Delete'),
            icon: Icon(Icons.delete),
            onPressed: () => removeNote(note),
          )
        ],
      ),
    );
  }
}
