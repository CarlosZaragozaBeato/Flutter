import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/notes_operation.dart';
import 'package:provider_example/screens/add_screen.dart';
import 'package:provider_example/screens/widgets/home_screen_widgets/note_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,

      appBar: AppBar(
        title:const Text("Notes"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Consumer<NotesOperation>(
        builder: (context, data, child){
          return ListView.builder(
              itemCount: data.getNotes.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    data.deleteNote(data.getNotes[index]);
                  },
                    child: NotesCard(note: data.getNotes[index],));
              }
           );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddScreen.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
