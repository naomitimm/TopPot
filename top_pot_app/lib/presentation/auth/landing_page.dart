import 'package:top_pot_app/presentation/exports.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
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
                  dispatcher: () {
                    navCubit.toSignupScreen();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                LinkText(
                  color: const Color.fromRGBO(151, 77, 36, 1),
                  text: "Login",
                  navigator: () {
                    navCubit.toLoginScreen();
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
