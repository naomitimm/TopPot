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
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
        body: ListView(
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
                validator: UserFormValidator.validateUserName,
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
              BlocConsumer<SignupBloc, SignupState>(
                listener: (context, state) {
                  if (state is SignupSuccessful) {
                    navCubit.toDashboardScreen();
                  }
                },
                builder: (context, state) {
                  if (state is SigningUp) {
                    return const ButtonLoading(
                      text: "Signup",
                      color: Colors.white,
                    );
                  }
                  if (state is SignupFailed) {
                    return Center(
                      child: Text(state.error.toString()),
                    );
                  }
                  if (state is SignupInitial) {
                    return ButtonWithArrow(
                        text: "Signup",
                        color: Colors.white,
                        dispatcher: () {
                          context.read<SignupBloc>().add(SignupRequested());
                        });
                  }
                  return Container();
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
                      text: "Already have an account yet? "),
                  const SizedBox(
                    width: 5,
                  ),
                  LinkText(
                      color: const Color.fromRGBO(151, 77, 36, 1),
                      text: "Login",
                      navigator: () {
                        navCubit.toLoginScreen();
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
