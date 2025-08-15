import 'dart:io';

class Libro {
  // Atributos
  final String _titulo;
  final String _autor;
  final int _anioPublicacion;
  bool _disponible;

  // Constructor poniendo la disponibilidad por defecto a true
  Libro(this._titulo, this._autor, this._anioPublicacion) : _disponible = true;

  // Getters y Setters
  String get titulo => _titulo;

  get autor => _autor;

  get anioPublicacion => _anioPublicacion;

  get disponible => _disponible;

  set disponible(value) => _disponible = value;

  // Método para cambiar el estado de disponibilidad
  String descripcion() {
    return 'Título: $_titulo, Autor: $_autor, Año de Publicación: $_anioPublicacion, Disponible: $_disponible';
  }

  static Libro generarLibro() {
    String titulo, autor;
    int anioPublicacion;

    print("Ingrese el título del libro: ");
    titulo = stdin.readLineSync()!;

    print("Ingrese el autor del libro: ");
    autor = stdin.readLineSync()!;

    print("Ingrese el año de publicación del libro: ");
    anioPublicacion = int.parse(stdin.readLineSync()!);

    return Libro(titulo, autor, anioPublicacion);
  }
}
