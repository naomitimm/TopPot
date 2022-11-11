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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
          if (state is CartLoading) {
            return const Center(
              child: CircularProgressIndicator(
                  color: Color.fromRGBO(151, 77, 36, 1)),
            );
          }

          if (state is CartLoadingFailed) {
            return Center(
              child: Text(state.error.toString()),
            );
          }

          return Stack(
            children: [
              Container(
                color: const Color.fromRGBO(151, 77, 36, 1),
                height: height / 2.9,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                child: DashboardHeadline(color: Colors.white, text: "My cart"),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 85, left: 15, right: 15),
                  child: CartOptionsCard()),
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 14, right: 14),
                child: ListView(
                  children: [
                    CartCard(
                        image: Coffee.coffees[1].image,
                        price: Coffee.coffees[1].price.toString(),
                        name: Coffee.coffees[1].name),
                    CartCard(
                        image: Coffee.coffees[4].image,
                        price: Coffee.coffees[4].price.toString(),
                        name: Coffee.coffees[4].name),
                    CartCard(
                        image: Coffee.coffees[2].image,
                        price: Coffee.coffees[2].price.toString(),
                        name: Coffee.coffees[2].name),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: CartSubmitCard(),
              )
            ],
          );
        }),
      ),
    );
  }
}
