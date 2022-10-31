import '../../exports.dart';

List colors = const [
  Color.fromRGBO(151, 77, 36, 1),
  Color.fromRGBO(27, 27, 27, 1),
  Color.fromRGBO(190, 200, 204, 1),
  Color.fromRGBO(99, 52, 32, 1),
  Color.fromRGBO(219, 207, 194, 1),
  Color.fromRGBO(190, 122, 67, 1),
];

class TopPotHeadline extends StatelessWidget {
  final Color color;
  const TopPotHeadline({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Top Pot",
        style: GoogleFonts.rancho(
          textStyle: TextStyle(
              color: color, fontSize: 50, fontWeight: FontWeight.w800),
        ));
  }
}

class IntroText extends StatelessWidget {
  final Color color;
  final String text;
  const IntroText({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            fontSize: 14,
          ),
        ));
  }
}

class LinkText extends StatelessWidget {
  final Color color;
  final String text;
  const LinkText({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            fontSize: 14,
          ),
        ));
  }
}
