import 'package:top_pot_app/presentation/exports.dart';

class AuthPageWave extends StatelessWidget {
  const AuthPageWave({Key? key, required this.navigator}) : super(key: key);
  final void Function() navigator;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: AuthClipper(),
          child: Container(
            color: const Color.fromRGBO(190, 122, 67, 1),
            height: 180,
          ),
        ),
        ClipPath(
          clipper: AuthClipper(),
          child: Container(
            color: const Color.fromRGBO(151, 77, 36, 1),
            height: 170,
          ),
        ),
        Positioned(
          top: 10,
          child: IconButton(
              onPressed: navigator,
              icon: const FaIcon(
                FontAwesomeIcons.chevronLeft,
                color: Colors.white,
                size: 30,
              )),
        )
      ],
    );
  }
}

class AuthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    //p0
    path.lineTo(0, height - 20);
    //controlling point, p1
    var firstControlling = Offset(width / 4, height);
    // end point, p2
    var firstEnd = Offset(width / 2, height - 50.0);

    path.quadraticBezierTo(
        firstControlling.dx, firstControlling.dy, firstEnd.dx, firstEnd.dy);
    // p2 is the new starting point, you dont have to write it down
    var secondControlling = Offset(width - (width / 4.24), height - 105);
    // p4, new end

    var secondEnd = Offset(width, height - 60);
    path.quadraticBezierTo(
        secondControlling.dx, secondControlling.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LandingPageWave extends StatelessWidget {
  const LandingPageWave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: LandingClipper(),
      child: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(151, 77, 36, 1),
            height: size.height / 1.6,
            width: double.infinity,
          ),
          const Positioned(
              top: 90,
              left: 130,
              child: Image(image: AssetImage("assets/icons/coffee1.png"))),
          const Positioned(
              top: 230, left: 130, child: TopPotHeadline(color: Colors.white))
        ],
      ),
    );
  }
}

class LandingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    //p0
    path.lineTo(0, height - 70);
    //controlling point, p1
    var firstControlling = Offset(width / 3, height + 70);
    // end point, p2
    var firstEnd = Offset(width / 1.4, height - 100.0);

    path.quadraticBezierTo(
        firstControlling.dx, firstControlling.dy, firstEnd.dx, firstEnd.dy);
    // p2 is the new starting point, you dont have to write it down
    var secondControlling = Offset(width - (width / 8.24), height - 165);
    // p4, new end

    var secondEnd = Offset(width, height - 110);
    path.quadraticBezierTo(
        secondControlling.dx, secondControlling.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
