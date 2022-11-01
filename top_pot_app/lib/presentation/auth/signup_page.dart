import 'package:top_pot_app/presentation/exports.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
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
              Text("Create new account",
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
                controller: nameController,
                hintText: "Username",
                placeholder: "",
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
                  text: "Signup",
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
                      color: Colors.black,
                      text: "Already have an account yet? "),
                  const SizedBox(
                    width: 5,
                  ),
                  LinkText(
                      color: const Color.fromRGBO(151, 77, 36, 1),
                      text: "Login",
                      navigator: () {
                        context.go('/login_page');
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
