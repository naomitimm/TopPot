import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:top_pot_app/presentation/exports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Opacity(
          opacity: 0.5,
          child: ClipPath(
              clipper: LoginWave(),
              child: Container(
                color: Colors.pink,
                height: 200,
              )),
        )
      ],
    ));
  }
}
