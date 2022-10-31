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
                child: Container(
                  color: const Color.fromRGBO(151, 77, 36, 1),
                  height: 450,
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
