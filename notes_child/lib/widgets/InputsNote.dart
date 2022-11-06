import 'package:flutter/material.dart';
import 'package:notes_child/boxes.dart';
import 'package:notes_child/model/note.dart';
import 'package:notes_child/utils/priority.dart';
import 'package:notes_child/widgets/TextFieldCustom.dart';

class InputsNote extends StatefulWidget {
  Note? note;
  TextEditingController? titleController;
  TextEditingController? descriptionController;
  String? dropdownMenu;

  InputsNote(
      {this.dropdownMenu,
      this.descriptionController,
      this.titleController,
      this.note,
      Key? key})
      : super(key: key);

  @override
  State<InputsNote> createState() => _InputsNoteState();
}

class _InputsNoteState extends State<InputsNote> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.note != null) {
      widget.titleController!.text = widget.note!.title;
      widget.descriptionController!.text = widget.note!.description;
      widget.dropdownMenu = widget.note!.priority;
    }
  }

  // List of items in our dropdown menu
  var items = [priority.low.name, priority.medium.name, priority.high.name];

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          TextFieldCustom(widget.titleController, "Title"),
          TextFieldCustom(widget.descriptionController, "Description"),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(0, 40, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DropdownButton(
                  value: widget.dropdownMenu,
                  dropdownColor: Colors.transparent,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: Colors.white),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,
                          style: const TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      widget.dropdownMenu = newValue!;
                    });
                  },
                ),
              ],
            ),
          ),
        ]),
      );
}
