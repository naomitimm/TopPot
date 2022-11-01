import '../../exports.dart';

class ButtonWithArrow extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() navigator;
  const ButtonWithArrow(
      {Key? key,
      required this.text,
      required this.color,
      required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigator();
      },
      child: Container(
        height: 40,
        width: 180,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(151, 77, 36, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: color, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
