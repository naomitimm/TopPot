import 'package:top_pot_app/presentation/exports.dart';

class CoffeeDetailsPage extends StatelessWidget {
  final Coffee coffee;
  const CoffeeDetailsPage({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text(coffee.name),
      ),
    );
  }
}
