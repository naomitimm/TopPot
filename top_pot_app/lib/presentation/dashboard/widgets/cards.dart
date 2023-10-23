import 'package:top_pot_app/presentation/exports.dart';

class CoffeeCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final void Function() dispatcher;
  final void Function() tapped;
  final Coffee coffee;
  const CoffeeCard(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.dispatcher,
      required this.coffee,
      required this.tapped});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: GestureDetector(
        onTap: dispatcher,
        child: Container(
          width: size.width / 2.2,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: 150,
                          height: 145,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(coffee.image),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(coffee.name,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          )),
                      const SizedBox(height: 5),
                      Text("\$${coffee.price}",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(190, 122, 67, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ],
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: BlocConsumer<CartBloc, CartState>(
              //     listener: (context, state) {},
              //     builder: (context, state) {
              //       if (state is CartButtonChange) {
              //         return IconButton(
              //           onPressed: () {},
              //           icon: const Icon(
              //             Icons.shopping_bag,
              //             color: Color.fromRGBO(151, 77, 36, 1),
              //             size: 25,
              //           ),
              //         );
              //       }
              //       return IconButton(
              //           onPressed: () {
              //             tapped();
              //           },
              //           icon: const Icon(
              //             Icons.shopping_bag_outlined,
              //             color: Color.fromRGBO(151, 77, 36, 1),
              //             size: 25,
              //           ));
              //     },
              //   ),
              // ),
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Color.fromRGBO(151, 77, 36, 1),
                      size: 25,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeOptionCard extends StatelessWidget {
  final String image;
  final String name;
  const HomeOptionCard({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: 90,
        height: 100,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(190, 122, 67, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 70,
                  height: 85,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.scaleDown),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(name,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  final String image;
  final String price;
  final String name;
  final void Function() navigator;
  final void Function() dispatcher;

  const CartCard(
      {Key? key,
      required this.image,
      required this.price,
      required this.name,
      required this.navigator,
      required this.dispatcher})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              border:
                  Border.all(color: Colors.black.withOpacity(0.5), width: 0.2),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: navigator,
                  child: Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image),
                        )),
                  ),
                ),
                FavoritesTitle(color: Colors.black, text: name),
                const ItemCounter(),
                IconButton(
                  onPressed: dispatcher,
                  icon: const FaIcon(
                    FontAwesomeIcons.x,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 90,
            left: 110,
            child: Text("\$$price",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(190, 122, 67, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
          ),
        ],
      ),
    );
  }
}

class EmptyCartCard extends StatelessWidget {
  const EmptyCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.coffee,
                        size: 30,
                        color: Color.fromRGBO(190, 122, 67, 1),
                      )),
                ),
                const DashboardHeadline(color: Colors.white, text: "My cart"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/cover/empty_cart.png'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text("Your cart is empty.",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Browse our app to pick out coffess you can add.",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      WideBrownButton(dispatcher: () {}, text: "Browse TopPot")
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  const ItemCounter({Key? key}) : super(key: key);

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.minus,
            color: Color.fromRGBO(151, 77, 36, 1),
            size: 16,
          ),
        ),
        const Text(
          "1",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.plus,
            color: Color.fromRGBO(151, 77, 36, 1),
            size: 16,
          ),
        )
      ],
    );
  }
}

class CartOptionsCard extends StatelessWidget {
  const CartOptionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(99, 52, 32, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CartChoiceText(text: "Summary"),
          CartChoiceText(text: "Payment")
        ],
      ),
    );
  }
}

class CartSubmitCard extends StatelessWidget {
  final String price;
  const CartSubmitCard({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(99, 52, 32, 1),
          border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Subtotal: \$$price",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
          Container(
            height: 40,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromRGBO(190, 122, 67, 1),
            ),
            child: Center(
              child: Text("Checkout",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String userName;
  const ProfileCard({Key? key, required this.name, required this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 0.2),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromRGBO(190, 122, 67, 1),
              ),
              Text(name,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              Text("@$userName",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w600),
                  )),
              Container(
                height: 40,
                width: 160,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromRGBO(190, 122, 67, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Edit Profile",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                    const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailsOrderSubmitCard extends StatelessWidget {
  final void Function() dispatcher;
  const DetailsOrderSubmitCard({super.key, required this.dispatcher});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: dispatcher,
          child: Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(151, 77, 36, 1), width: 0.2),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            child: Center(
              child: Text("Add to cart",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(190, 122, 67, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 140,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color.fromRGBO(190, 122, 67, 1),
          ),
          child: Center(
            child: Text("Buy now",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
          ),
        ),
      ],
    );
  }
}

class CoffeeOptionsCard extends StatefulWidget {
  final String lable;
  final Color color;
  final void Function() dispatcher;

  const CoffeeOptionsCard(
      {super.key,
      required this.color,
      required this.dispatcher,
      required this.lable});

  @override
  State<CoffeeOptionsCard> createState() => _CoffeeOptionsCardState();
}

class _CoffeeOptionsCardState extends State<CoffeeOptionsCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          widget.lable,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                color: widget.color, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        Radio(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
            value: "radio value",
            groupValue: "group value",
            onChanged: (value) {})

        // IconButton(
        //     onPressed: widget.dispatcher,
        //     icon: Icon(
        //       Icons.circle_outlined,
        //       color: widget.color,
        //     ))
      ],
    );
  }
}

class CoffeeSizeCard extends StatelessWidget {
  final String lable;
  final Color color;
  final void Function() dispatcher;
  const CoffeeSizeCard(
      {super.key,
      required this.lable,
      required this.color,
      required this.dispatcher});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: dispatcher,
      child: Container(
        height: 40,
        width: size.width / 4,
        color: Colors.white,
        child: Center(
            child: Text(
          lable,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        )),
      ),
    );
  }
}

class CoffeeCountCard extends StatelessWidget {
  final String price;
  const CoffeeCountCard({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MiniHeadline(color: Colors.white, text: price),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.minus,
                color: Colors.white,
                size: 20,
              ),
            ),
            Container(
              height: 40,
              width: 50,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(190, 122, 67, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text(
                  "1",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        )
      ],
    );
  }
}
