import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character(
      {required this.name,
      required this.imagePath,
      required this.description,
      required this.colors});
}

List characters = [
  Character(
      name: "Virtue",
      imagePath: "images/lo.png",
      description:
          "The program starts, and if the login is successful, a token will be generated for the current session, then multiple choice questions will appear and the user will start answering them at a fast pace. On the answer, the certified psychiatrist will immediately decide when reading whether the patient needs a psychiatrist with medication or the help of a psychiatrist without medication, and then, multiple options are given according to the patient’s desire, and an appointment is chosen either regular appointments according to the client’s location or appointments via the Internet with/out identity.",
      colors: [
        Color.fromARGB(255, 238, 5, 64),
        Color.fromARGB(255, 241, 115, 122)
      ]),
];
