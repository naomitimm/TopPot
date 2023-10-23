import 'package:top_pot_app/domain/user/user_model.dart';
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
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 25,
                          )),
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
