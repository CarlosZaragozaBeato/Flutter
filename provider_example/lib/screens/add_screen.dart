
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/notes_operation.dart';


class AddScreen extends StatelessWidget {
  static const routeName = "/add_screen";
   AddScreen({Key? key}) : super(key: key);

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text("Add Notes"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1 ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    decoration:const InputDecoration(
                      hintText:  "Enter a title",
                        border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                      )
                    ),
                    style: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                    controller: titleController,
                  ),
                  TextField(
                    decoration:const InputDecoration(
                        hintText:  "Enter a description",
                      border: InputBorder.none,
                        hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                    )
                    ),
                    style :const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                    controller: descriptionController,
                  ),
                ],
              ),
            ),

             Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: (){
                  if(titleController.text.isNotEmpty &&
                      descriptionController.text.isNotEmpty){
                    Provider.of<NotesOperation>(context, listen: false).addNewNote(
                        titleController.text,
                        descriptionController.text);

                    titleController.text = "";
                    descriptionController.text = "";
                  }
                },
                    child: const Text("Add Note")),

            )
          ],
        )
      ),
    );
  }
}
