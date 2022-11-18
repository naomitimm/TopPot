import 'package:top_pot_app/presentation/exports.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
          if (state is CartLoadingFailed) {
            return Center(
              child: Text(state.error.toString()),
            );
          }

          if (state is CartLoadingSuccessful) {
            return Stack(
              children: [
                Container(
                  color: const Color.fromRGBO(151, 77, 36, 1),
                  height: height / 2.9,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                  child:
                      DashboardHeadline(color: Colors.white, text: "My cart"),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 85, left: 15, right: 15),
                    child: CartOptionsCard()),
                Padding(
                  padding: const EdgeInsets.only(top: 130, left: 14, right: 14),
                  child: ListView.builder(
                    itemCount: state.coffees.length,
                    itemBuilder: (context, index) {
                      return BlocListener<CartBloc, CartState>(
                        listener: (context, state) {
                          if (state is CartLoadingSuccessful) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  backgroundColor:
                                      const Color.fromRGBO(151, 77, 36, 1)
                                          .withOpacity(0.5),
                                  content: const Text("Removed from cart")),
                            );
                          }
                        },
                        child: CartCard(
                          image: state.coffees[index].image,
                          price: state.coffees[index].price.toString(),
                          name: state.coffees[index].name,
                          navigator: () {
                            navCubit.toCoffeeDetailsPage(Coffee.coffees[index]);
                          },
                          dispatcher: () {
                            context.read<CartBloc>().add(
                                RemoveFromCart(coffee: state.coffees[index]));
                          },
                        ),
                      );
                    },
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: CartSubmitCard(),
                )
              ],
            );
          }

          return const Center(
            child: CircularProgressIndicator(
                color: Color.fromRGBO(151, 77, 36, 1)),
          );
        }),
      ),
    );
  }
}
