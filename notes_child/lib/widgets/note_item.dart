import 'package:flutter/material.dart';
import 'package:notes_child/model/note.dart';
import 'package:notes_child/pages/add_edit_note.dart';

class NoteItem extends StatelessWidget {
  final Note note;

  const NoteItem(this.note, {Key? key}) : super(key: key);

  void removeNote(Note note) {
    note.delete();
  }

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(AddEditNote.routeName, arguments: note.key);
        },
        child: Card(
          color: Color(note.color),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        note.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    IconButton(
                        onPressed: () => removeNote(note),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[100],
                        ))
                  ],
                ),
                Text(
                  note.description,
                  style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
      );
}
