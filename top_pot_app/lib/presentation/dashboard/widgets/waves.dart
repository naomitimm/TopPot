import 'package:top_pot_app/presentation/dashboard/widgets/text.dart';
import 'package:top_pot_app/presentation/exports.dart';

class FavoritePageWave extends StatelessWidget {
  const FavoritePageWave({Key? key, required this.headline}) : super(key: key);
  final String headline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: FavoriteClipper(),
          child: Container(
            color: const Color.fromRGBO(151, 77, 36, 1),
            height: 120,
          ),
        ),
        Positioned(
            top: 15,
            left: 10,
            child: DashboardHeadline(color: Colors.white, text: headline))
      ],
    );
  }
}

class FavoriteClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    //p0
    path.lineTo(0, height - 40);
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
