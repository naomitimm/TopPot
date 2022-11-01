import 'package:top_pot_app/presentation/exports.dart';

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
        AuthPageWave(
          navigator: () {
            context.go('/');
          },
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Log in",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(190, 122, 67, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 20,
              ),
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
                    context.go('/host_page');
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IntroText(
                      color: Colors.black, text: "Don't have an account yet? "),
                  const SizedBox(
                    width: 5,
                  ),
                  LinkText(
                      color: const Color.fromRGBO(151, 77, 36, 1),
                      text: "Signup",
                      navigator: () {
                        context.go('/signup_page');
                      })
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
