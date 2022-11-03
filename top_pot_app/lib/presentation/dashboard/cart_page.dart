import 'package:top_pot_app/domain/models/coffee.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/cards.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/text.dart';
import 'package:top_pot_app/presentation/exports.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DashboardHeadline(
                    color: Color.fromRGBO(151, 77, 36, 1), text: "My cart"),
                // IconButton(
                //   onPressed: () {},
                //   icon: const FaIcon(
                //     FontAwesomeIcons.cartShopping,
                //     color: Color.fromRGBO(151, 77, 36, 1),
                //     size: 23,
                //   ),
                // )
              ],
            ),
            FavoriteCard(
              image: Coffee.coffees[1].image,
              price: Coffee.coffees[1].price,
              name: Coffee.coffees[1].name,
            ),
            FavoriteCard(
              image: Coffee.coffees[4].image,
              price: Coffee.coffees[4].price,
              name: Coffee.coffees[4].name,
            ),
            FavoriteCard(
              image: Coffee.coffees[5].image,
              price: Coffee.coffees[5].price,
              name: Coffee.coffees[5].name,
            ),
          ],
        ),
      ),
    );
  }
}
