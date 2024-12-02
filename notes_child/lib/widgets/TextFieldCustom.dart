import 'package:flutter/material.dart';

Widget TextFieldCustom(TextEditingController? controller, String placeholder) =>
    TextField(
      controller: controller,
      style: const TextStyle(fontSize: 20.0, color: Colors.white),
      cursorColor: Colors.white,
      maxLines: 1,
      decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: const TextStyle(fontSize: 20.0, color: Colors.grey),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent))),
    );
