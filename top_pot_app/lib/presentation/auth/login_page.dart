import 'package:top_pot_app/presentation/auth/signup_page.dart';
import 'package:top_pot_app/presentation/exports.dart';
import 'package:top_pot_app/presentation/nav/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ClipPath(
            clipper: LoginWave(),
            child: Container(
              color: const Color.fromRGBO(151, 77, 36, 1),
              height: 180,
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                AuthFields(
                  controller: emailController,
                  hintText: "Email",
                  placeholder: "example@email.com",
                ),
                const SizedBox(
                  height: 25,
                ),
                PasswordTextField(
                    controller: passwordController, hintText: "Password"),
                const SizedBox(
                  height: 25,
                ),
                ButtonWithArrow(
                    text: "Login",
                    color: Colors.white,
                    navigator: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const Home();
                      })));
                    }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const IntroText(
                        color: Colors.black,
                        text: "Don't have an account yet? "),
                    const SizedBox(
                      width: 5,
                    ),
                    LinkText(
                        color: const Color.fromRGBO(151, 77, 36, 1),
                        text: "Signup",
                        navigator: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const SignupPage();
                          })));
                        })
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
