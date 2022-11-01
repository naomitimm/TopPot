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
      body: ListView(
        children: [
          const LandingPageWave(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const TopPotHeadline(color: Colors.black),
                const IntroText(
                    color: Colors.black,
                    text: "Why run for coffee when it can come to you?"),
                const SizedBox(
                  height: 20,
                ),
                ButtonWithArrow(
                  text: "New Account",
                  color: Colors.white,
                  navigator: () {
                    context.go('/signup_page');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                LinkText(
                  color: const Color.fromRGBO(151, 77, 36, 1),
                  text: "Login",
                  navigator: () {
                    context.go('/login_page');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
