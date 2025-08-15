import 'dart:io';

class Receta {
  final String _nombre;
  final String _tipo;
  final List<String> _ingredientes;
  final List<String> _pasos;

  Receta(this._nombre, this._tipo, this._ingredientes, this._pasos);

  String get nombre => _nombre;

  get tipo => _tipo;

  get getIngredientes => _ingredientes;

  get getPasos => _pasos;

  String mostrarReceta() {
    String nombreTipo = "Receta: $_nombre\nTipo: $_tipo";
    String ingredientes = "Ingredientes: ${_ingredientes.join(", ")}";
    String pasos = "Pasos: ${_pasos.join(", ")}";
    return "$nombreTipo\n$ingredientes\n$pasos";
  }

  void agregarIngredientes() {
    print("Cuantos ingredientes vamos a agregar?: ");
    int cantidad = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < cantidad; i++) {
      print("Ingrese el ingrediente ${i + 1}: ");
      String ingrediente = stdin.readLineSync()!;
      _ingredientes.add(ingrediente);
    }
  }

  
}
