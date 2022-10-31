import '../../exports.dart';

class AuthButton1 extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() navigator;
  const AuthButton1(
      {Key? key,
      required this.text,
      required this.color,
      required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            navigator();
          },
          child: Container(
            height: 40,
            width: 150,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(151, 77, 36, 1),
                borderRadius: BorderRadius.all(Radius.circular(20))),
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
        ));
  }
}
