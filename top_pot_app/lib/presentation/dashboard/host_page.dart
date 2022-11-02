import 'package:top_pot_app/presentation/exports.dart';

class HostPage extends StatefulWidget {
  const HostPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  int currentPosition = 1;
  final pages = [const HomePage(), const CheckoutPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPosition],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromRGBO(151, 77, 36, 1),
        unselectedItemColor: Colors.black,
        currentIndex: currentPosition,
        selectedLabelStyle: GoogleFonts.montserrat(
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
        ),
        onTap: ((int index) => setState(() {
              currentPosition = index;
            })),
        items: const [
          BottomNavigationBarItem(
              activeIcon: FaIcon(
                FontAwesomeIcons.house,
                color: Color.fromRGBO(151, 77, 36, 1),
                size: 25,
              ),
              icon: FaIcon(
                FontAwesomeIcons.house,
                color: Colors.black,
                size: 25,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
                color: Color.fromRGBO(151, 77, 36, 1),
                size: 28,
              ),
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
                size: 28,
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              activeIcon: FaIcon(
                FontAwesomeIcons.userLarge,
                color: Color.fromRGBO(151, 77, 36, 1),
                size: 25,
              ),
              icon: FaIcon(
                FontAwesomeIcons.userLarge,
                color: Colors.black,
                size: 25,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
