import 'package:top_pot_app/presentation/exports.dart';

class WideBrownButton extends StatelessWidget {
  final void Function() dispatcher;
  final String text;
  const WideBrownButton(
      {Key? key, required this.dispatcher, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: dispatcher,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(151, 77, 36, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(text,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )),
        ),
      ),
    );
  }
}
