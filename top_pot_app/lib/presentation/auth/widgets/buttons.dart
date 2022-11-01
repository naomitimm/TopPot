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
      onTap: navigator,
      child: Container(
        height: 40,
        width: 190,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(151, 77, 36, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: color, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            IconButton(
                onPressed: navigator,
                icon: const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.white,
                  size: 20,
                ))
          ],
        ),
      ),
    );
  }
}
