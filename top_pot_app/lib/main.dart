import 'package:top_pot_app/presentation/exports.dart';

void main() {
  runApp(const TopPotApp());
}

final authRepository = AuthRepository();

class TopPotApp extends StatelessWidget {
  const TopPotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiRepositoryProvider(
      providers: [RepositoryProvider(create: (context) => AuthRepository())],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NavigationCubit(),
          ),
          BlocProvider(
            create: (context) => SignupBloc(authRepository: authRepository),
            child: const SignupPage(),
          ),
          BlocProvider(
            create: (context) => LoginBloc(authRepository: authRepository),
            child: const LoginPage(),
          ),
          BlocProvider(
            create: (context) => CartBloc()..add(LoadCart()),
          )
        ],
        child: const TopPotPages(),
      ),
    ));
  }
}

class TopPotPages extends StatelessWidget {
  const TopPotPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return MaterialApp(
          home: Navigator(
            pages: [
              const MaterialPage(child: LandingPage()),
              // const MaterialPage(child: HostPage()),
              if (state is SignupRoute) const MaterialPage(child: SignupPage()),
              if (state is LoginRoute) const MaterialPage(child: LoginPage()),
              if (state is LandingRoute)
                const MaterialPage(child: LandingPage()),
              if (state is DashboardRoute)
                const MaterialPage(child: HostPage()),
              if (state is CoffeeDetailsRoute)
                MaterialPage(
                    child: CoffeeDetailsPage(
                  coffee: state.coffee,
                ))
            ],
            onPopPage: (route, result) => route.didPop(result),
          ),
        );
      },
    );
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key, required this.error}) : super(key: key);
  final Exception? error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
