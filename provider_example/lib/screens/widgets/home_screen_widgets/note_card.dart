
import 'package:flutter/material.dart';

import '../../../models/note.dart';

class NotesCard extends StatelessWidget {
  final Note note;


  const NotesCard({required this.note, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(15.0),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(15.0) 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(note.title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            )),
          const SizedBox(height: 5.0),
          Text(note.description,
              style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                color: Colors.black54
              ))
        ],
      ),
    );
  }
}
