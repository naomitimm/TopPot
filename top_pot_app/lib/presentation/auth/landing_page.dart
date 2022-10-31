import 'package:top_pot_app/presentation/auth/login_page.dart';
import 'package:top_pot_app/presentation/auth/signup_page.dart';
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
        backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
        body: Column(
          children: [
            ClipPath(
                clipper: LandingWave(),
                child: Stack(
                  children: [
                    Container(
                      color: const Color.fromRGBO(151, 77, 36, 1),
                      height: 450,
                    ),
                    const Positioned(
                        top: 90,
                        left: 130,
                        child: Image(
                            image: AssetImage("assets/icons/coffee1.png"))),
                    const Positioned(
                        top: 230,
                        left: 130,
                        child: TopPotHeadline(
                            color: Color.fromRGBO(99, 52, 32, 1)))
                  ],
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  const TopPotHeadline(color: Colors.white),
                  const IntroText(
                      color: Colors.white,
                      text: "Why run for coffee when it can come to you?"),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthButton1(
                    text: "Create Account",
                    color: Colors.white,
                    navigator: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const SignupPage();
                      })));
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  LinkText(
                    color: const Color.fromRGBO(190, 122, 67, 1),
                    text: "Login",
                    navigator: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const LoginPage();
                      })));
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
