import 'package:top_pot_app/presentation/exports.dart';

void main() {
  runApp(const TopPotApp());
}

class TopPotApp extends StatelessWidget {
  const TopPotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TopPotPages(),
    );
  }
}

class TopPotPages extends StatelessWidget {
  TopPotPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _routes.routerDelegate,
      routeInformationParser: _routes.routeInformationParser,
      routeInformationProvider: _routes.routeInformationProvider,
    );
  }

  final GoRouter _routes = GoRouter(
      errorBuilder: (context, state) => ErrorScreen(
            error: state.error,
          ),
      initialLocation: '/',
      routes: <GoRoute>[
        GoRoute(path: '/', builder: ((context, state) => const HostPage())),
        // GoRoute(path: '/', builder: ((context, state) => const LandingPage())),
        GoRoute(
            path: '/login_page',
            builder: ((context, state) => const LoginPage())),
        GoRoute(
            path: '/signup_page',
            builder: ((context, state) => const SignupPage())),
        GoRoute(
            path: '/host_page', builder: ((context, state) => const HostPage()))
      ]);
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
