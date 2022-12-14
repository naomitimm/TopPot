import 'package:top_pot_app/presentation/exports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const DashboardHeadline(
                          color: Colors.white, text: "@jon_d"),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 25,
                          )),
                    ],
                  ),
                ),
                const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: ProfileCard(),
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
