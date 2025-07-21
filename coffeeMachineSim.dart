void main() {
  print("Pedido 1: ");
  var pedido1 = PedidoCafe("Ana", "ESPREsso", "no");
  print(pedidos(pedido1));
}

class PedidoCafe {
  final cliente;
  TipoCafe tipoCafe = TipoCafe.AMERICANO;
  bool extraAzucar = false;

  PedidoCafe(this.cliente, var cafe, String azucar) {
    String tipo = cafe;
    switch (tipo.toLowerCase()) {
      case "espresso":
        this.tipoCafe = TipoCafe.ESPRESSO;
        break;
      case "americano":
        this.tipoCafe = TipoCafe.AMERICANO;
        break;
      case "capuchino":
        this.tipoCafe = TipoCafe.CAPUCHINO;
        break;
      default:
    }

    extraAzucar = azucar.toLowerCase() == "si";
  }
}

String pedidos(PedidoCafe pedido) {
  String azucar = pedido.extraAzucar ? "con" : "sin";
  return "${pedido.cliente} ha pedido un café ${pedido.tipoCafe.name.toLowerCase()} $azucar extra de azúcar.";
}

enum TipoCafe { ESPRESSO, AMERICANO, CAPUCHINO }
