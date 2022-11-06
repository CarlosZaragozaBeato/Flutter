import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController controlller;
  final String placeholder;

  const TextFieldCustom(this.controlller, this.placeholder, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff816897), width: 2.0),
        ),
        hintText: placeholder,
      ),
      cursorColor: Theme.of(context).primaryColor,
    );
  }
}
