import 'dart:io';

import 'package:quizz/quizz.dart' as quizz;

void main(List<String> arguments) {
  print("Quieres jugar a un juego? (si/no): ");
  String? respuesta = stdin.readLineSync();

  if (respuesta != "si") {
    exit(0);
  }

  print("Empezamos el juego!");

  quizz.startGame();
}
