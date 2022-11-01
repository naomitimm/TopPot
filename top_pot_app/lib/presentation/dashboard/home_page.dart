import 'package:top_pot_app/presentation/dashboard/widgets/containers.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/search_bar.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/text.dart';
import 'package:top_pot_app/presentation/exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: height / 1.5,
            child: Stack(
              children: [
                Container(
                  color: const Color.fromRGBO(151, 77, 36, 1),
                  height: height / 2.2,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: DashboardHeadline(color: Colors.white, text: "Home"),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 80, left: 15, right: 15),
                    child: MySearchBar()),
                Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: ((context, index) {
                            return const CoffeeCard(
                              image: "assets/coffee/coffee1.jpg",
                              name: "Cappuchino",
                              price: "4.50",
                            );
                          })),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: ListView(
              children: [
                const CatagoryCard(
                    image: "assets/coffee/decaff.png", name: "Decaf"),
                const CatagoryCard(
                    image: "assets/coffee/milk.png", name: "Dairy free"),
                const CatagoryCard(
                    image: "assets/coffee/sugar.png", name: "Sugar free"),
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
