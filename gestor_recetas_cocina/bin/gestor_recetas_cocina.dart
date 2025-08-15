import 'package:gestor_recetas_cocina/gestor_recetas_cocina.dart'
    as gestor_recetas_cocina;
import '../model/Receta.dart';

void main(List<String> arguments) {
  // Crear algunas recetas de ejemplo
  Receta receta1 = Receta(
    "Tortilla de patatas",
    "Plato principal",
    ["Patatas", "Huevos", "Cebolla", "Aceite de oliva", "Sal"],
    [
      "Pelar y cortar las patatas",
      "Freír las patatas y la cebolla",
      "Batir los huevos",
      "Mezclar todo y cuajar en la sartén",
    ],
  );

  Receta receta2 = Receta(
    "Bizcocho de yogur",
    "Postre",
    ["Harina", "Azúcar", "Huevos", "Yogur", "Aceite", "Levadura"],
    [
      "Mezclar los ingredientes",
      "Verter en un molde",
      "Hornear a 180°C durante 30 minutos",
    ],
  );

  Receta receta3 = Receta(
    "Ensalada César",
    "Entrante",
    ["Lechuga", "Pollo", "Queso parmesano", "Crutones", "Salsa César"],
    [
      "Cortar la lechuga",
      "Cocinar el pollo",
      "Mezclar todos los ingredientes",
      "Añadir la salsa",
    ],
  );

  List<Receta> recetas = [receta1, receta2, receta3];

  print("Bienvenido al Gestor de Recetas de Cocina");
  print(receta1.mostrarReceta());

  List<Receta> recetasEncontradas = buscarPorTipo("Entrante", recetas);

  print("\n");
  print("Buscando entrantes...");
  for (Receta rec in recetasEncontradas) {
    print(rec.mostrarReceta());
  }
}

List<Receta> buscarPorTipo(String tipo, List<Receta> recetas) {
  List<Receta> recetasEncontradas = [];

  for (Receta rec in recetas) {
    String tipoR = rec.tipo;
    if (tipoR.toLowerCase() == tipo.toLowerCase()) {
      recetasEncontradas.add(rec);
    }
  }

  return recetasEncontradas;
}
