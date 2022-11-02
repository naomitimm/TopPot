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
                          Icons.favorite,
                          color: Color.fromRGBO(151, 77, 36, 1),
                          size: 25,
                        )
                      : const Icon(
                          Icons.favorite_border,
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
