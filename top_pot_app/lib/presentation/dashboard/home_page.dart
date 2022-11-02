import 'package:top_pot_app/domain/models/coffee.dart';
import 'package:top_pot_app/presentation/dashboard/widgets/cards.dart';
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
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       MiniHeadline(color: Colors.black, text: "Options"),
          //       const SizedBox(
          //         height: 5,
          //       ),
          //       SizedBox(
          //         height: 70,
          //         width: double.infinity,
          //         child: ListView(
          //           scrollDirection: Axis.horizontal,
          //           children: [
          //             OptionCard(
          //                 image: "assets/coffee/no-sugar.png", name: "Decaf"),
          //             OptionCard(
          //                 image: "assets/coffee/dairy-free.png", name: "Decaf"),
          //             OptionCard(
          //                 image: "assets/coffee/coffee.png", name: "Decaf"),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
