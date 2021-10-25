import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({Key? key, this.height}) : super(key: key);
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "< ",
          style: GoogleFonts.italianno(
              textStyle: Theme.of(context).textTheme.headline4),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Ammar",
            style: GoogleFonts.italianno(
                textStyle: Theme.of(context).textTheme.headline4),
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          style: GoogleFonts.italianno(
              textStyle: Theme.of(context).textTheme.headline4),
        )
      ],
    );
  }
}
