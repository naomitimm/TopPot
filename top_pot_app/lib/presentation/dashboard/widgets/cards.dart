import 'package:top_pot_app/presentation/dashboard/widgets/text.dart';
import 'package:top_pot_app/presentation/exports.dart';

class CoffeeCard extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  CoffeeCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        width: 190,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
            ),
            // image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
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
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.name,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )),
                    const SizedBox(height: 5),
                    Text("\$${widget.price}",
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
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  icon: isFav
                      ? const Icon(
                          Icons.shopping_bag,
                          color: Color.fromRGBO(151, 77, 36, 1),
                          size: 25,
                        )
                      : const Icon(
                          Icons.shopping_bag_outlined,
                          color: Color.fromRGBO(151, 77, 36, 1),
                          size: 25,
                        )),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String image;
  final String name;
  const OptionCard({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color.fromRGBO(151, 77, 36, 1).withOpacity(0.1),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Container(
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.scaleDown),
            )),
      ),

      // Padding(
      //   padding: const EdgeInsets.only(bottom: 10, right: 5),
      //   child: Align(
      //     alignment: Alignment.bottomRight,
      //     child: Text(name,
      //         style: GoogleFonts.montserrat(
      //           textStyle: const TextStyle(
      //               color: Colors.black,
      //               fontSize: 14,
      //               fontWeight: FontWeight.w700),
      //         )),
      //   ),
      // ),
    );
  }
}

class CartCard extends StatelessWidget {
  final String image;
  final String price;
  final String name;

  const CartCard(
      {Key? key, required this.image, required this.price, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.2),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
            FavoritesTitle(color: Colors.black, text: name),
            const ItemCounter(),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.x,
                color: Colors.black,
                size: 15,
              ),
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [

            //       ],
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("\$$price",
            //             style: GoogleFonts.montserrat(
            //               textStyle: const TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.w500),
            //             )),

            //       ],
            //     )
            //   ],
            // )
          ],
        ),
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
        children: [
          CartChoiceText(text: "Summary"),
          CartChoiceText(text: "Payment")
        ],
      ),
    );
  }
}
