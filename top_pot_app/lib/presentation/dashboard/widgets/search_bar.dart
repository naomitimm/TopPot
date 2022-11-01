import 'package:flutter/cupertino.dart';
import 'package:top_pot_app/presentation/exports.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      itemColor: const Color.fromRGBO(151, 77, 36, 1),
      placeholderStyle: const TextStyle(
        color: Color.fromRGBO(190, 200, 204, 1),
      ),
      style: GoogleFonts.montserrat(
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.white,
    );
  }
}
