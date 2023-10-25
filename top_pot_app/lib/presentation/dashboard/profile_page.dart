import 'package:top_pot_app/application/auth/logout/logout_bloc.dart';
import 'package:top_pot_app/domain/user/user_model.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/alert_widget.dart';
import 'package:top_pot_app/presentation/exports.dart';
import 'package:username_generator/username_generator.dart';

class ProfilePage extends StatelessWidget {
  final User user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    var generator = UsernameGenerator();
    generator.separator = '_';
    final navCubit = context.read<NavigationCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: height / 2,
            child: Stack(
              children: [
                Container(
                  color: const Color.fromRGBO(151, 77, 36, 1),
                  height: height / 3,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: BlocConsumer<LogoutBloc, LogoutState>(
                        listener: (context, state) {
                          if (state is LogoutSuccessful) {
                            navCubit.toLandingScreen();
                            Navigator.of(context).pop(DialogueAction.yes);
                          }
                        },
                        builder: (context, state) {
                          if (state is Loggingout) {
                            return const CircularProgressIndicator(
                              color: Color.fromRGBO(156, 102, 68, 1),
                            );
                          }
                          if (state is Logoutfailed) {
                            return Text(state.error.toString());
                          }
                          return IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 25,
                              ));
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: ProfileCard(
                        name: user.name,
                        userName: generator.generate(user.name),
                      ),
                    ))
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.plus,
                  color: Color.fromRGBO(151, 77, 36, 1),
                  size: 16,
                ),
              ),
              Text("Add any known allergies",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.calendar,
                  color: Color.fromRGBO(151, 77, 36, 1),
                  size: 16,
                ),
              ),
              Text("Joined on October 6 2022",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
