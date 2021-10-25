import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/sections_data.dart';
import 'package:portfolio/constants/themes.dart';
import 'package:portfolio/constants/url.dart';
import 'package:portfolio/sections/about/about_section.dart';
import 'package:portfolio/sections/contact/contact_section.dart';
import 'package:portfolio/sections/services/services_section.dart';
import 'package:portfolio/widgets/entrance_fader.dart';
import 'package:portfolio/widgets/navbar_logo.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:universal_html/html.dart' as html;

import 'description/descption_section.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  _MainSectionState createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = ThemeProvider.themeOf(context).data;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        title: const NavbarLogo(),
        actions: [
          ...List.generate(
            sectionsName.length,
            (index) => EntranceFader(
              offset: const Offset(0, -10),
              delay: const Duration(milliseconds: 100),
              duration: const Duration(milliseconds: 250),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: _themeProvider.highlightColor,
                  onPressed: () {},
                  child: Text(
                    sectionsName[index],
                  ),
                ),
              ),
            ),
          ),
          EntranceFader(
            offset: Offset(0, -10),
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 250),
            child: Container(
              height: 60.0,
              width: 120.0,
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: _themeProvider.highlightColor.withAlpha(150),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(
                    color: _themeProvider.highlightColor,
                  ),
                ),
                onPressed: () {
                  html.window.open(cvUrl, 'pdf');
                },
                child: Text(
                  "RESUME",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 15.0),
          SizedBox(
            height: 30.0,
            child: Switch(
              inactiveTrackColor: Colors.grey,
              value: ThemeProvider.controllerOf(context).currentThemeId ==
                      darkTheme.id
                  ? true
                  : false,
              onChanged: (value) {
                ThemeProvider.controllerOf(context).nextTheme();
              },
              activeColor: _themeProvider.highlightColor,
            ),
          ),
          const SizedBox(width: 15.0),
        ],
      ),
      body: ListView(
        children: const [
          DescriptionSection(),
          AboutSection(),
          ContactSession(),
          ServicesSection(),
          SizedBox(
            height: 1000,
          )
        ],
      ),
    );
  }
}
