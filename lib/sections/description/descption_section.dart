import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants/size_config.dart';
import 'package:portfolio/constants/url.dart';
import 'package:portfolio/widgets/entrance_fader.dart';
import 'package:theme_provider/theme_provider.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = ThemeProvider.themeOf(context).data;
    return SizedBox(
      height: SizeConfig.heightMultiplier * 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "WELCOME TO MY PORTFOLIO!",
                style: GoogleFonts.montserrat(
                  fontSize: SizeConfig.textMultiplier * 1,
                  fontWeight: FontWeight.bold,
                  color: _themeProvider.highlightColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 2),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  "assets/hi.gif",
                  height: SizeConfig.textMultiplier * 2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "I'm Ammar HOUSSENBAY",
                style: GoogleFonts.montserrat(
                  fontSize: SizeConfig.textMultiplier * 1,
                  fontWeight: FontWeight.bold,
                  color: _themeProvider.highlightColor,
                ),
              ),
              Text(
                "   --------   ",
                style: GoogleFonts.montserrat(
                  fontSize: SizeConfig.textMultiplier * 1,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Available For Freelance Work",
                style: GoogleFonts.montserrat(
                  fontSize: SizeConfig.textMultiplier * 1,
                  fontWeight: FontWeight.bold,
                  color: _themeProvider.highlightColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.heightMultiplier * 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I'm Freelance Developper\nTurning Your Ideas\nInto Money",
                  maxLines: 3,
                  style: GoogleFonts.josefinSans(
                      fontSize: SizeConfig.textMultiplier * 6,
                      fontWeight: FontWeight.bold),
                ),

                //TODO ajoute meme controller que listview ici
                SizedBox(
                  width: SizeConfig.widthMultiplier * 50,
                  child: Lottie.network(
                    lottieMobileAnimation,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
