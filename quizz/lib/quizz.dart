import 'dart:io';

// Mapa con las preguntas: respuestas
Map<String, String> quizzQuestions = {
  "¿Que significan las siglas CPU?": "unidad central de procesamiento",
  "¿Que es un sistema operativo?":
      "es un software que gestiona los recursos de hardware y software de un ordenador",
  "¿Que es un algoritmo?":
      "es una secuencia de pasos o instrucciones que se siguen para resolver un problema o realizar una tarea",
  "¿Que es un lenguaje de programación?":
      "es un conjunto de reglas y simbolos que se utilizan para escribir programas informaticos",
};

// 1. Respuestas para "¿Que significan las siglas CPU?"
List<String> respuestasCPU = [
  "1.- Unidad de Control de Procesamiento",
  "2.- Centro de Procesamiento Unificado",
  "3.- Computadora Personal Universal",
  "4.- Unidad Central de Procesamiento",
];

// 2. Respuestas para "¿Que es un sistema operativo?"
List<String> respuestasSO = [
  "1.- Es un conjunto de cables que conectan los componentes de un ordenador",
  "2.- Es un tipo de lenguaje de programación para hardware",
  "3.- Es un software que gestiona los recursos de hardware y software de un ordenador",
  "4.- Es un periférico de entrada y salida",
];

// 3. Respuestas para "¿Que es un algoritmo?"
List<String> respuestasAlgoritmo = [
  "1.- Es un dispositivo fisico que almacena informacion temporalmente",
  "2.- Es una secuencia de pasos o instrucciones que se siguen para resolver un problema o realizar una tarea",
  "3.- Es un lenguaje de programacion utilizado para crear aplicaciones moviles",
  "4.- Es un conjunto de imagenes que representan datos visualmente",
];

// 4. Respuestas para "¿Que es un lenguaje de programacion?"
List<String> respuestasLenguaje = [
  "1.- Es un conjunto de reglas y simbolos que se utilizan para escribir programas informaticos",
  "2.- Es una herramienta para ensamblar componentes electronicos",
  "3.- Es un sistema operativo para gestionar recursos de hardware",
  "4.- Es una red de computadoras interconectadas",
];

List<String> preguntasFalladas = [];

void startQuizz() {
  int score = 0;
  print("Responde las siguientes preguntas:");

  preguntar(score);

  print(mensajePuntuacion(score));

  if (score < 4) {
    print("¿Desea ver las preguntas que ha fallado? (s/n):");
    String? respuesta = stdin.readLineSync()?.toLowerCase();

    if (respuesta == "s") {
      verPreguntasFalladas();
    }
  }
}

// Metodo para lanzar las preguntas al usuario y que este conteste
int preguntar(int score) {
  String? answer;
  // Recorremos el contenido del mapa
  for (var pregunta in quizzQuestions.entries) {
    print(pregunta.key);

    // Usamos el switch para cada pregunta del mapa
    switch (pregunta.key) {
      case "¿Que significan las siglas CPU?":
        // Se muestran las respuestas posibles dentro de las listas de respuestas de cada pregunta
        for (var respuesta in respuestasCPU) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
          preguntasFalladas.add(pregunta.key);
        }
        break;

      case "¿Que es un sistema operativo?":
        // Se muestran las respuestas posibles dentro de las listas de respuestas de cada pregunta
        for (var respuesta in respuestasSO) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
          preguntasFalladas.add(pregunta.key);
        }
        break;

      case "¿Que es un algoritmo?":
        // Se muestran las respuestas posibles dentro de las listas de respuestas de cada pregunta
        for (var respuesta in respuestasAlgoritmo) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
          preguntasFalladas.add(pregunta.key);
        }
        break;

      case "¿Que es un lenguaje de programación?":
        // Se muestran las respuestas posibles dentro de las listas de respuestas de cada pregunta
        for (var respuesta in respuestasLenguaje) {
          print(respuesta);
        }

        print("Respuesta: ");
        answer = stdin.readLineSync()?.toLowerCase();

        if (comprobarRespuestas(answer)) {
          score++;
          print("CORRECTO");
        } else {
          print("INCORRECTO :(");
          preguntasFalladas.add(pregunta.key);
        }
        break;
      default:
    }
  }
  return score;
}

// Función para comprobar si la respuesta es correcta o no
bool comprobarRespuestas(String? respuesta) {
  String pregunta = quizzQuestions.keys.firstWhere(
    // Buscamos en el mapa la pregunta y comprobamos que sea igual su valor a la respuesta
    (question) => quizzQuestions[question] == respuesta,
    orElse: () => "",
  );

  // Si la respuesta es correcta se avisa y se añade el punto
  if (pregunta != "") {
    return true;
  } else {
    return false;
  }
}

// Función para mostrar al usuario un mensaje personalizado dependiendo de la puntuación
String mensajePuntuacion(int puntuacion) {
  String mensaje;
  switch (puntuacion) {
    case 4:
      mensaje = ("ENHORABUENA, NO HA FALLADO NINGUNA PREGUNTA, HA GANADO");
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

void verPreguntasFalladas() {
  int i = 1;
  for (var fallo in preguntasFalladas) {
    print("$i: $fallo");
    i++;
  }
}
