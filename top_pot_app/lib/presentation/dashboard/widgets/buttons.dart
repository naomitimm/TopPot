import 'package:top_pot_app/presentation/exports.dart';

class CartSubmitButton extends StatelessWidget {
  const CartSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Subtotal: \$23",
              style: GoogleFonts.montserrat(
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
