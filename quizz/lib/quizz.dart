import 'dart:io';

void startGame() {
  int puntos = 0;

  print("Bienvenido al juego de preguntas y respuestas!");

  print("¿Que significan las siglas CPU?");
  print("1. Central Processing Unit");
  print("2. Central Power Unit");
  print("3. Central Programming Unit");

  print("Numero de respuesta: ");
  String? respuesta = stdin.readLineSync();

  if (respuesta == "1") {
    puntos++;
    print("RESPUESTA CORRECTA!");
  } else {
    print("RESPUESTA INCORRECTA. La respuesta correcta es la 1.");
  }

  print("Segunda pregunta:");
  print("¿Que significan las siglas RAM?");

  print("1. Read Only Memory");
  print("2. Read Access Memory");
  print("3. Random Access Memory");
  print("Numero de respuesta: ");
  respuesta = stdin.readLineSync();

  if (respuesta == "3") {
    puntos++;
    print("RESPUESTA CORRECTA!");
  } else {
    print("RESPUESTA INCORRECTA. La respuesta correcta es la 3.");
  }

  print("Tercera pregunta:");
  print("Que significan las siglas GPU?");
  print("1. Graphics Power Unit");
  print("2. Graphics Processing Unit");
  print("3. Graphics Programming Unit");
  print("Numero de respuesta: ");
  respuesta = stdin.readLineSync();

  if (respuesta == "2") {
    puntos++;
    print("RESPUESTA CORRECTA!");
  } else {
    print("RESPUESTA INCORRECTA. La respuesta correcta es la 2.");
  }

  print("Has conseguido $puntos puntos.");
  if (puntos == 3) {
    print("¡Felicidades! Has respondido todas las preguntas correctamente.");
  } else if (puntos == 2) {
    print("¡Buen trabajo! Has respondido 2 preguntas correctamente.");
  } else if (puntos == 1) {
    print("Has respondido 1 pregunta correctamente. ¡Sigue practicando!");
  } else {
    print(
      "No has respondido ninguna pregunta correctamente. ¡Inténtalo de nuevo!",
    );
  }
}
