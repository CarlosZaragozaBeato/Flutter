import 'package:flutter/material.dart';
import 'package:notes_child/boxes.dart';
import 'package:notes_child/model/note.dart';
import 'package:notes_child/utils/priority.dart';
import 'package:notes_child/widgets/InputsNote.dart';
import 'package:notes_child/widgets/color_picker.dart';

class AddEditNote extends StatefulWidget {
  static const routeName = "/add_edit_note";

  const AddEditNote({Key? key}) : super(key: key);

  @override
  State<AddEditNote> createState() => _AddEditNoteState();
}

class _AddEditNoteState extends State<AddEditNote> {
  late dynamic routeArgs;
  Note? note = null;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    routeArgs = ModalRoute.of(context)!.settings.arguments;
    if (routeArgs != null) {
      getNote();
    }
  }

  void getNote() async {
    final box = Boxes.getNotes();
    note = box.values.firstWhere((note) => note.key == routeArgs);
  }

  void updateNote(
      String title, String description, String dropdownvalue, Note not) {
    not.delete();

    if (title.isNotEmpty) {
      final note = Note()
        ..title = title
        ..color = Color.fromARGB(255, 255, 0, 0).value
        ..description = description
        ..priority = dropdownvalue;
      final box = Boxes.getNotes();
      box.add(note);
    }
    Navigator.of(context).pop();
  }

  void addNote(String title, String description, String dropdownvalue) {
    if (title.isNotEmpty) {
      final note = Note()
        ..title = title
        ..color = color
        ..description = description
        ..priority = dropdownvalue;
      final box = Boxes.getNotes();
      box.add(note);
    }
    Navigator.of(context).pop();
  }

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dropdownMenu = priority.medium.name;
  int color = Color(0xff3f4e4f).value;
  var colors = [
    const Color(0xff3f4e4f).value,
    const Color(0xff774360).value,
    const Color(0xff51557e).value,
    const Color(0xff064663).value,
    const Color(0xff4f3b78).value
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Color(color),
      appBar: AppBar(
        title: Text("Notes"),
        actions: [
          IconButton(
              onPressed: () {
                note != null
                    ? updateNote(titleController.text,
                        descriptionController.text, dropdownMenu, note!)
                    : addNote(
                        titleController.text,
                        descriptionController.text,
                        dropdownMenu,
                      );
              },
              icon: Icon(Icons.check))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InputsNote(
            note: note,
            titleController: titleController,
            descriptionController: descriptionController,
            dropdownMenu: dropdownMenu,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemBuilder: ((context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        color = colors[index];
                      });
                    },
                    child: Card(
                      elevation: 4,
                      shape: const CircleBorder(
                        //<-- SEE HERE
                        side: BorderSide(
                          color: Color.fromARGB(38, 238, 238, 238),
                        ),
                      ),
                      color: Color(colors[index]),
                    ),
                  )),
              itemCount: colors.length,
            ),
          ),
        ],
      ));
}
