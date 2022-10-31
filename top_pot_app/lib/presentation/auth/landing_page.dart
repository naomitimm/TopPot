import 'package:top_pot_app/presentation/exports.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(27, 27, 27, 1),
        body: Column(
          children: [
            ClipPath(
                clipper: LandingWave(),
                child: Container(
                  color: Color.fromRGBO(151, 77, 36, 1),
                  height: 450,
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: const [
                  TopPotHeadline(color: Colors.white),
                  IntroText(
                      color: Colors.white,
                      text: "Why run for coffee when it can come to you?"),
                  AuthButton1()
                ],
              ),
            )
          ],
        ));
  }
}
