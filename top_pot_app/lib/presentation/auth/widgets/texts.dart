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
  const TopPotHeadline({
    Key? key,
    required this.color,
  }) : super(key: key);

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
            fontSize: 15,
          ),
        ));
  }
}

class LinkText extends StatelessWidget {
  final Color color;
  final String text;
  final void Function() navigator;
  const LinkText(
      {Key? key,
      required this.color,
      required this.text,
      required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigator();
      },
      child: Text(text,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.w500),
          )),
    );
  }
}

class AuthFields extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String placeholder;
  final String? Function(String?) validator;
  const AuthFields(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.placeholder,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(hintText,
              style: GoogleFonts.montserrat(
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              )),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                    width: 1, color: Color.fromRGBO(151, 77, 36, 1))),
            hintText: placeholder,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?) validator;
  final String hintText;
  bool isVisible;
  PasswordTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.isVisible = true,
      required this.validator})
      : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Password",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
        ),
        TextFormField(
          controller: widget.controller,
          obscureText: !showPassword,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                    width: 1, color: Color.fromRGBO(151, 77, 36, 1))),
            suffixIconColor: Colors.white,
            suffixIcon: widget.isVisible
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: FaIcon(
                      showPassword
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                      size: 20,
                    ),
                    color: const Color.fromRGBO(190, 122, 67, 1),
                  )
                : null,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
          ),
        ),
      ],
    );
  }
}
