import 'libro.dart';

class Biblioteca {
  final List<Libro> _libros;

  Biblioteca(this._libros);

  void agregarLibro() {
    Libro libroNuevo = Libro.generarLibro();
    _libros.add(libroNuevo);
  }

  List<Libro> buscarPorAutor(String autor) {
    List<Libro> libroAutor = [];

    for (Libro libro in _libros) {
      if (libro.autor == autor) {
        libroAutor.add(libro);
      }
    }
    return libroAutor;
  }

  List<Libro> mostrarLibrosDisponibles() {
    List<Libro> disponibles = [];

    for (Libro libro in _libros) {
      if (libro.disponible) {
        disponibles.add(libro);
      }
    }
    return disponibles;
  }
}
