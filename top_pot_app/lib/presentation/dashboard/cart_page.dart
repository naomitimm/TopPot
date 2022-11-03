import 'package:top_pot_app/domain/models/coffee.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/cards.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/search_bar.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/text.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/waves.dart';
import 'package:top_pot_app/presentation/exports.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(151, 77, 36, 1),
            height: height / 2.7,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: DashboardHeadline(color: Colors.white, text: "My cart"),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 85, left: 15, right: 15),
              child: CartOptionsCard()),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 14, right: 14),
            child: ListView(
              children: [
                FavoriteCard(
                    image: Coffee.coffees[1].image,
                    price: Coffee.coffees[1].price,
                    name: Coffee.coffees[1].name),
                FavoriteCard(
                    image: Coffee.coffees[4].image,
                    price: Coffee.coffees[4].price,
                    name: Coffee.coffees[4].name),
                FavoriteCard(
                    image: Coffee.coffees[2].image,
                    price: Coffee.coffees[2].price,
                    name: Coffee.coffees[2].name),
                FavoriteCard(
                    image: Coffee.coffees[0].image,
                    price: Coffee.coffees[0].price,
                    name: Coffee.coffees[0].name),
              ],
            ),
          )
        ],
      ),
    );
  }
}
