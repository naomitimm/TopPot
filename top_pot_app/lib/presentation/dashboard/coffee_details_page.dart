import 'package:top_pot_app/presentation/exports.dart';

class CoffeeDetailsPage extends StatelessWidget {
  final Coffee coffee;
  const CoffeeDetailsPage({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(coffee.image), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Container(
                  height: height,
                  width: width,
                  color: Colors.black.withOpacity(0.2)),
              IconButton(
                  onPressed: () {
                    navCubit.toDashboardScreen();
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.chevronLeft,
                    color: Colors.white,
                    size: 25,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    height: height,
                    width: width / 1.16,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: DetailsHeadline(
                                color: Colors.white,
                                text: coffee.name,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              MiniHeadline(
                                  color: Colors.white, text: "Description"),
                              SizedBox(
                                height: 5,
                              ),
                              DetailsDescription(
                                  color: Colors.white,
                                  text:
                                      "Are you looking for a way to get yourself into the holiday spirit every morning in December? Do you love to switch up your daily brew? Have you been wanting to try new flavors but don't want to buy a whole bag?")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            children: [
                              CoffeeOptionsCard(
                                  color: Colors.white,
                                  dispatcher: () {},
                                  lable: "Caffine"),
                              CoffeeOptionsCard(
                                  color: Colors.white,
                                  dispatcher: () {},
                                  lable: "Sugar"),
                              CoffeeOptionsCard(
                                  color: Colors.white,
                                  dispatcher: () {},
                                  lable: "Dairy")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CoffeeSizeCard(
                                lable: "S",
                                color: Colors.black,
                                dispatcher: () {},
                              ),
                              CoffeeSizeCard(
                                lable: "M",
                                color: Colors.black,
                                dispatcher: () {},
                              ),
                              CoffeeSizeCard(
                                lable: "L",
                                color: Colors.black,
                                dispatcher: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CoffeeCountCard(price: "\$ ${coffee.price}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: BlocListener<CartBloc, CartState>(
                              listener: (context, state) {
                            if (state is CartLoadingSuccessful) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text("Added to cart"),
                                  backgroundColor:
                                      const Color.fromRGBO(190, 122, 67, 1)
                                          .withOpacity(0.5),
                                ),
                              );
                            }
                          }, child: DetailsOrderSubmitCard(
                            dispatcher: () {
                              context
                                  .read<CartBloc>()
                                  .add(AddToCart(coffee: coffee));
                            },
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: ListView(
    //     children: [
    //       Container(
    //         height: height / (1.7),
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //             borderRadius: const BorderRadius.only(
    //                 bottomLeft: Radius.circular(20),
    //                 bottomRight: Radius.circular(20)),
    //             image: DecorationImage(
    //                 image: AssetImage(coffee.image), fit: BoxFit.cover)),
    //         child: Stack(children: [
    //           Container(
    //             height: height / (1.7),
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               color: Colors.black.withOpacity(0.5),
    //               borderRadius: const BorderRadius.only(
    //                   bottomLeft: Radius.circular(20),
    //                   bottomRight: Radius.circular(20)),
    //             ),
    //           ),
    //           IconButton(
    //               onPressed: () {
    //                 navCubit.toDashboardScreen();
    //               },
    //               icon: const FaIcon(
    //                 FontAwesomeIcons.chevronLeft,
    //                 color: Colors.white,
    //                 size: 25,
    //               )),
    //           Padding(
    //             padding: EdgeInsets.only(top: (height / 18)),
    //             child: Align(
    //                 alignment: Alignment.topCenter,
    //                 child: DetailsHeadline(
    //                   color: Colors.white,
    //                   text: coffee.name,
    //                 )),
    //           ),
    //           Align(
    //             alignment: Alignment.bottomCenter,
    //             child: Container(
    //               height: height / (6),
    //               width: double.infinity,
    //               decoration: BoxDecoration(
    //                   color: Colors.black.withOpacity(0.6),
    //                   borderRadius:
    //                       const BorderRadius.all(Radius.circular(20))),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                 children: [
    //                   MiniHeadline(
    //                       color: Colors.white, text: "\$ ${coffee.price}"),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       IconButton(
    //                         onPressed: () {},
    //                         icon: const FaIcon(
    //                           FontAwesomeIcons.minus,
    //                           color: Colors.white,
    //                           size: 20,
    //                         ),
    //                       ),
    //                       Container(
    //                         height: 40,
    //                         width: 90,
    //                         decoration: const BoxDecoration(
    //                             color: Color.fromRGBO(190, 122, 67, 1),
    //                             borderRadius:
    //                                 BorderRadius.all(Radius.circular(20))),
    //                         child: const Center(
    //                           child: Text(
    //                             "1",
    //                             style: TextStyle(
    //                                 fontSize: 17,
    //                                 fontWeight: FontWeight.w500,
    //                                 color: Colors.white),
    //                           ),
    //                         ),
    //                       ),
    //                       IconButton(
    //                         onPressed: () {},
    //                         icon: const FaIcon(
    //                           FontAwesomeIcons.plus,
    //                           color: Colors.white,
    //                           size: 20,
    //                         ),
    //                       )
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             ),
    //           )
    //         ]),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: const [
    //             MiniHeadline(color: Colors.black, text: "Description"),
    //             DetailsDescription(
    //                 color: Colors.black,
    //                 text:
    //                     "Are you looking for a way to get yourself into the holiday spirit every morning in December? Do you love to switch up your daily brew? Have you been wanting to try new flavors but don't want to buy a whole bag?")
    //           ],
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(top: 20),
    //         child:
    //             BlocListener<CartBloc, CartState>(listener: (context, state) {
    //           if (state is CartLoadingSuccessful) {
    //             ScaffoldMessenger.of(context).showSnackBar(
    //               SnackBar(
    //                 content: const Text("Added to cart"),
    //                 backgroundColor:
    //                     const Color.fromRGBO(190, 122, 67, 1).withOpacity(0.5),
    //               ),
    //             );
    //           }
    //         }, child: DetailsOrderSubmitCard(
    //           dispatcher: () {
    //             context.read<CartBloc>().add(AddToCart(coffee: coffee));
    //           },
    //         )),
    //       )
    //     ],
    //   ),
    // );
  }
}
