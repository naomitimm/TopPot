import 'package:top_pot_app/presentation/exports.dart';

// List colors = const [
//   Color.fromRGBO(151, 77, 36, 1),
//   Color.fromRGBO(27, 27, 27, 1),
//   Color.fromRGBO(190, 200, 204, 1),
//   Color.fromRGBO(99, 52, 32, 1),
//   Color.fromRGBO(219, 207, 194, 1),
//   Color.fromRGBO(190, 122, 67, 1),
// ];

class DashboardHeadline extends StatelessWidget {
  final String text;
  final Color color;
  const DashboardHeadline({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 35, fontWeight: FontWeight.w500),
        ));
  }
}

class MiniHeadline extends StatelessWidget {
  final String text;
  final Color color;
  const MiniHeadline({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 20, fontWeight: FontWeight.w600),
        ));
  }
}

class FavoritesTitle extends StatelessWidget {
  final String text;
  final Color color;
  const FavoritesTitle({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: color, fontSize: 15, fontWeight: FontWeight.w500),
        ));
  }
}

class CartChoiceText extends StatelessWidget {
  const CartChoiceText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ));
  }
}
