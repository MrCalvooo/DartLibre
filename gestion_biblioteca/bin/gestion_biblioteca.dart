
import "../model/libro.dart";
import '../model/biblioteca.dart';

void main(List<String> arguments) {
  List<Libro> libros = [
    Libro('Cien años de soledad', 'Gabriel García Márquez', 1967),
    Libro('El amor en los tiempos del cólera', 'Gabriel García Márquez', 1985),
    Libro('1984', 'George Orwell', 1949),
    Libro('El principito', 'Antoine de Saint-Exupéry', 1943),
  ];

  Biblioteca biblioteca = Biblioteca(libros);

  print("Agregar libro");
  biblioteca.agregarLibro();

  print("Buscar libros por autor:");
  List<Libro> libroAutor = biblioteca.buscarPorAutor('Gabriel García Márquez');
  if (libroAutor.isEmpty) {
    print("No se encontraron libros del autor especificado");
  } else {
    for (Libro libro in libroAutor) {
      print(libro.descripcion());
    }
  }
}
