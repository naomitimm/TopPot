import 'package:top_pot_app/domain/user/user_model.dart';
import 'package:top_pot_app/presentation/exports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
        body: Form(
      key: formKey,
      child: ListView(
        children: [
          AuthPageWave(
            navigator: () {
              navCubit.toLandingScreen();
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
                  validator: UserFormValidator.validateEmail,
                ),
                const SizedBox(
                  height: 25,
                ),
                PasswordTextField(
                  controller: passwordController,
                  hintText: "Password",
                  validator: UserFormValidator.validatePassword,
                ),
                const SizedBox(
                  height: 25,
                ),
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccessful) {
                      navCubit.toDashboardScreen(User(
                          name: '',
                          password: passwordController.text,
                          userEmail: emailController.text));
                    }
                  },
                  builder: (context, state) {
                    if (state is Logingin) {
                      return const ButtonLoading(
                          text: "Loging in", color: Colors.white);
                    }
                    if (state is LoginFailed) {
                      return Center(
                        child: Text(state.error.toString()),
                      );
                    }
                    return AuthButtonWithArrow(
                      text: "Login",
                      color: Colors.white,
                      dispatcher: () {
                        context.read<LoginBloc>().add(LoginRequested(
                            email: emailController.text,
                            password: passwordController.text));
                      },
                      formKey: formKey,
                    );
                  },
                ),
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
                          navCubit.toSignupScreen();
                        })
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
