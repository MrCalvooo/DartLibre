class Producto {
  String nombre;
  double precio = 0.0;
  String categoria;

  @override
  String toString() {
    return "Nombre producto: $nombre, precio: $precio, categoria: $categoria";
  }

  Producto(this.nombre, String precio, this.categoria) {
    this.precio = double.parse(precio);
  }

  static List<Producto> filtrarProductos(
    Set<Producto> productos,
    String categoria,
  ) {
    List<Producto> listaFiltrada = [];
    for (var prod in productos) {
      if (prod.categoria == categoria) {
        listaFiltrada.add(prod);
      }
    }

    return listaFiltrada;
  }
}
