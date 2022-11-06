// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class Plan {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String time;
  final double saved;
  final double repros;
  final int color;
  final IconData icon;
  final String category;
  bool isFavorite = false;

  Plan({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.time,
    required this.saved,
    required this.repros,
    required this.color,
    required this.icon,
    required this.category,
  });
}

final listOfPlans = [
  Plan(
      id: "p1",
      title: "Sleep Meditattion",
      category: "c1",
      color: Color(0xff8e97fe).value,
      description:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
      icon: Icons.music_note,
      repros: 15000,
      saved: 5000,
      subtitle: "Lorem Ipsum",
      time: "12"),
  Plan(
      id: "p2",
      title: "Tips for sleeping",
      category: "c4",
      color: Color(0xff11d79a).value,
      description:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
      icon: Icons.music_note,
      repros: 145000,
      saved: 10000,
      subtitle: "Lorem Ipsum",
      time: "12"),
  Plan(
      id: "p3",
      title: "Night Island",
      category: "c3",
      color: Color(0xffefbd28).value,
      description:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
      icon: Icons.music_note,
      repros: 1000,
      saved: 1000,
      subtitle: "Lorem Ipsum",
      time: "12"),
  Plan(
      id: "p4",
      title: "Calming sounds",
      category: "c1",
      color: Color(0xfffaa27c).value,
      description:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
      icon: Icons.music_note,
      repros: 155000,
      saved: 35000,
      subtitle: "Lorem Ipsum",
      time: "12"),
  Plan(
      id: "p5",
      title: "Education",
      category: "c1",
      color: Color(0xffe74033).value,
      description:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
      icon: Icons.music_note,
      repros: 11000,
      saved: 4000,
      subtitle: "Lorem Ipsum",
      time: "12"),
];
