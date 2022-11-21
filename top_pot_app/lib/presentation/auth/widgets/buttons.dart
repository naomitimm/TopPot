import '../../exports.dart';

class ButtonWithArrow extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() dispatcher;
  const ButtonWithArrow({
    Key? key,
    required this.text,
    required this.color,
    required this.dispatcher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dispatcher,
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
                onPressed: dispatcher,
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

class AuthButtonWithArrow extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() dispatcher;
  final GlobalKey<FormState> formKey;
  const AuthButtonWithArrow(
      {Key? key,
      required this.text,
      required this.color,
      required this.dispatcher,
      required this.formKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          dispatcher();
        }
      },
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
                onPressed: dispatcher,
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

class ButtonLoading extends StatelessWidget {
  final String text;
  final Color color;
  const ButtonLoading({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
            CircularProgressIndicator(
              color: color,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}
