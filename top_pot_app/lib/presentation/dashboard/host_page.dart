import 'package:top_pot_app/domain/user/user_model.dart';
import 'package:top_pot_app/presentation/exports.dart';

class HostPage extends StatefulWidget {
  final User user;
  const HostPage({Key? key, required this.user})
      : super(
          key: key,
        );

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  int currentPosition = 0;
  late User newUser;

  @override
  void initState() {
    newUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomePage(),
      const CheckoutPage(),
      ProfilePage(
        user: newUser,
      )
    ];
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
                Icons.shopping_bag,
                color: Color.fromRGBO(151, 77, 36, 1),
                size: 28,
              ),
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
                size: 28,
              ),
              label: "Cart"),
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
