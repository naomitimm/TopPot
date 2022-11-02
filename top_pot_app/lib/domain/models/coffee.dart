import 'package:top_pot_app/presentation/exports.dart';

class Coffee {
  final String name;
  final String price;
  final String image;

  Coffee({required this.name, required this.price, required this.image});

  static List<Coffee> coffees = [
    Coffee(name: "Latte", price: "5.45", image: "assets/coffee/latte.jpg"),
    Coffee(
        name: "Cappuccino",
        price: "6.25",
        image: "assets/coffee/cappuccino.jpg"),
    Coffee(
        name: "Americano", price: "4.50", image: "assets/coffee/americano.jpg"),
    Coffee(
        name: "Espresso", price: "8.00", image: "assets/coffee/espresso1.jpg"),
    Coffee(name: "Mocha", price: "3.75", image: "assets/coffee/mocha.jpg"),
    Coffee(
        name: "Macchiato", price: "7.60", image: "assets/coffee/macchiato.jpg"),
  ];
}
