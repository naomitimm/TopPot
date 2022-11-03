import 'package:top_pot_app/presentation/dashboard/widgets/search_bar.dart';
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: height / 1.6,
            child: Stack(
              children: [
                Container(
                  color: const Color.fromRGBO(151, 77, 36, 1),
                  height: height / 2.2,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: TopPotHeadline(color: Colors.white),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 85, left: 15, right: 15),
                    child: MySearchBar()),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 260,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Coffee.coffees.length,
                          itemBuilder: ((context, index) {
                            return CoffeeCard(
                              image: Coffee.coffees[index].image,
                              name: Coffee.coffees[index].name,
                              price: Coffee.coffees[index].price,
                            );
                          })),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: MiniHeadline(color: Colors.black, text: "Options"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: const [
                HomeOptionCard(
                    image: "assets/coffee/sugar-free.png", name: "Sugar free"),
                HomeOptionCard(
                    image: "assets/coffee/dairy-free.png", name: "Dairy free"),
                HomeOptionCard(
                    image: "assets/coffee/decaff.png", name: "Decaff"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
