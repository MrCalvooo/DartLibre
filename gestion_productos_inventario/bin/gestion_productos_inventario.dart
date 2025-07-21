import '../model/producto.dart';

void main(List<String> arguments) {
  var productos = <Producto>{
    Producto("Ventilador", "100.50", "Electronica"),
    Producto("Ruedas", "50", "Vehiculo"),
    Producto("Manguito", "20", "Vehiculo"),
    Producto("Volante", "132.60", "Vehiculo"),
    Producto("Ryzen 5 3600", "100", "Informatica"),
  };

  print("Lista original: ");
  for (var prod in productos) {
    print(prod);
  }

  List<Producto> listaVehiculo = Producto.filtrarProductos(
    productos,
    "Vehiculo",
  );

  print("\nLista filtrada");
  for (var prod in listaVehiculo) {
    print(prod);
  }
}
