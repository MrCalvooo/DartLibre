import 'dart:io';

Map<String, String> quizzQuestions = {
  "¿Que significan las siglas CPU?": "unidad central de procesamiento",
  "¿Que es un sistema operativo?":
      "es un software que gestiona los recursos de hardware y software de un ordenador",
  "¿Que es un algoritmo?":
      "es una secuencia de pasos o instrucciones que se siguen para resolver un problema o realizar una tarea",
  "¿Que es un lenguaje de programacion?":
      "es un conjunto de reglas y simbolos que se utilizan para escribir programas informaticos",
};

void startQuizz() {
  int score = 0;
  print("Bienvenido al quizz!");
  print("Responde las siguientes preguntas:");

  preguntar(quizzQuestions, score);
}

// Metodo para lanzar las preguntas al usuario y que este conteste
void preguntar(Map<String, String> preguntas, int score) {
  // 1. Respuestas para "¿Que significan las siglas CPU?"
  List<String> respuestasCPU = [
    "Unidad de Control de Procesamiento",
    "Centro de Procesamiento Unificado",
    "Computadora Personal Universal",
    "Unidad Central de Procesamiento",
  ];

  // 2. Respuestas para "¿Que es un sistema operativo?"
  List<String> respuestasSO = [
    "Es un conjunto de cables que conectan los componentes de un ordenador",
    "Es un tipo de lenguaje de programación para hardware",
    "Es un software que gestiona los recursos de hardware y software de un ordenador",
    "Es un periférico de entrada y salida",
  ];

  // 3. Respuestas para "¿Que es un algoritmo?"
  List<String> respuestasAlgoritmo = [
    "Es un dispositivo fisico que almacena informacion temporalmente",
    "Es una secuencia de pasos o instrucciones que se siguen para resolver un problema o realizar una tarea",
    "Es un lenguaje de programacion utilizado para crear aplicaciones moviles",
    "Es un conjunto de imagenes que representan datos visualmente",
  ];

  // 4. Respuestas para "¿Que es un lenguaje de programacion?"
  List<String> respuestasLenguaje = [
    "Es un conjunto de reglas y simbolos que se utilizan para escribir programas informaticos",
    "Es una herramienta para ensamblar componentes electronicos",
    "Es un sistema operativo para gestionar recursos de hardware",
    "Es una red de computadoras interconectadas",
  ];

  String? answer;
  for (var pregunta in preguntas.entries) {
    print(pregunta.key);

    switch (pregunta.key) {
      case "¿Que significan las siglas CPU?":
        for (var respuesta in respuestasCPU) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(preguntas, answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
        }
        break;

      case "¿Que es un sistema operativo?":
        for (var respuesta in respuestasSO) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(preguntas, answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
        }
        break;

      case "¿Que es un algoritmo?":
        for (var respuesta in respuestasAlgoritmo) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(preguntas, answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
        }
        break;

      case "¿Que es un lenguaje de programación?":
        for (var respuesta in respuestasLenguaje) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(preguntas, answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
        }
        break;
      default:
    }
  }
}

// Función para comprobar si la respuesta es correcta o no
bool comprobarRespuestas(Map<String, String> preguntas, String? respuesta) {
  String pregunta = preguntas.keys.firstWhere(
    // Buscamos en el mapa la pregunta y comprobamos que sea igual su valor a la respuesta
    (question) => preguntas[question] == respuesta,
    orElse: () => "",
  );

  // Si la respuesta es correcta se avisa y se añade el punto
  if (pregunta != "") {
    return true;
  } else {
    return false;
  }
}

String mensajePuntuacion(int puntuacion) {
  String mensaje;
  switch (puntuacion) {
    case 4:
      mensaje = ("ENHORABUENA, NO HA FALLADO NINGUNA PREGUNTA");
      break;
    case 3:
      mensaje = ("Uyyyy casi perfecto, fallo una pregunta");
      break;
    case 2:
      mensaje = ("Ha acertado la mitad de las preguntas bien");
      break;
    case 1:
      mensaje = ("Ha acertado solo una pregunta...");
      break;
    default:
      mensaje = ("No ha acertado ni una sola bien :(");
  }

  return mensaje;
}
