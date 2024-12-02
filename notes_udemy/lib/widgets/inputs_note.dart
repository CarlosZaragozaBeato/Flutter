import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';
import 'package:notes_udemy/boxes.dart';
import 'package:notes_udemy/model/note.dart';
import 'package:notes_udemy/widgets/TextFieldCustom.dart';

class InputsNote extends StatefulWidget {
  const InputsNote({Key? key}) : super(key: key);

  @override
  State<InputsNote> createState() => _InputsNoteState();
}

class _InputsNoteState extends State<InputsNote> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Hive.box('notes').close();
  }

  void addNote(String title, String description) {
    if (title.isEmpty || description.isEmpty) {
      return;
    }
    final note = Note()
      ..title = title
      ..description = description
      ..time = DateTime.now();

    final box = Boxes.getNotes();
    box.add(note);
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextFieldCustom(titleController, "Title"),
            TextFieldCustom(descriptionController, "Description"),
            const SizedBox(height: 50.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                onPrimary: Colors.white,
                side: BorderSide(color: Colors.white),
                shadowColor: Theme.of(context).primaryColor,
                elevation: 3,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                minimumSize: Size(
                    MediaQuery.of(context).size.width / 1.5, 40), //////// HERE
              ),
              onPressed: () {
                addNote(titleController.text, descriptionController.text);
              },
              child: const Text('Add Note'),
            )
          ],
        ),
      );
}
