import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hive/hive.dart';
import 'package:notes_child/boxes.dart';
import 'package:notes_child/model/note.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_child/pages/add_edit_note.dart';
import 'package:notes_child/utils/priority.dart';
import 'package:notes_child/widgets/note_item.dart';
import '../utils/priority.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool layout = true;
  final filterController = TextEditingController();
  void addNote() {
    final note = Note()
      ..title = "21212"
      ..color = Color.fromARGB(255, 199, 230, 255).value
      ..description =
          "pjpaisjdfasidjasdfpjpaisjdfasidjasdfmsakfjasifjasjifjasijpjpaisjdfasidjasdfmsakfjasifjasjifjasijpjpaisjdfasidjasdfmsakfjasifjasjifjasijpjpaisjdfasidjasdfmsakfjasifjasjifjasijpjpaisjdfasidjasdfmsakfjasifjasjifjasijpjpaisjdfasidjasdfmsakfjasifjasjifjasijmsakfjasifjasjifjasij"
      ..priority = priority.low.name;

    final box = Boxes.getNotes();
    box.add(note);
  }

  Iterable<Note> filterNotes(text) {
    final box = Boxes.getNotes();
    return box.values.where((element) => text == element.title);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 9,
          title: TextField(
              controller: filterController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                filled: true,
                fillColor: const Color(0xffcccccc),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      layout = !layout;
                    });
                  },
                  icon: Icon(layout ? Icons.view_column : Icons.table_rows)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ValueListenableBuilder<Box<Note>>(
                  valueListenable: Boxes.getNotes().listenable(),
                  builder: (context, box, _) {
                    final notes = box.values.toList().cast<Note>();

                    return Container(
                        child: buildContent(
                            filterNotes(filterController.text).toList().isEmpty
                                ? notes
                                : filterNotes(filterController.text).toList()));
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(AddEditNote.routeName);
            },
            child: Icon(Icons.add,
                color: Theme.of(context).scaffoldBackgroundColor)),
      );

  Widget buildContent(List<Note> notes) {
    if (notes.isEmpty) {
      return const Center(
          child: Text(
        "No Notes...",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ));
    } else {
      return Container(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Notes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.height / 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                    crossAxisCount: !layout ? 1 : 2),
                itemCount: notes.length,
                itemBuilder: (BuildContext context, int index) {
                  final note = notes[index];
                  return NoteItem(note);
                },
              ),
            ),
          ],
        ),
      );
    }
  }
}
