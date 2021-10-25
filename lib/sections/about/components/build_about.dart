import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:portfolio/constants/size_config.dart';
import 'package:portfolio/constants/url.dart';
import 'package:portfolio/sections/about/components/build_header.dart';
import 'package:portfolio/sections/about/components/constant.dart';
import 'package:portfolio/sections/about/components/technology_use_widget.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:universal_html/html.dart' as html;

class BuildAbout extends StatelessWidget {
  const BuildAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = ThemeProvider.themeOf(context).data;
    return Expanded(
      flex: 3,
      child: Padding(
        padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BuildHeader(),
            Text(
              "Who am I?",
              style: kTextThemeAbout.copyWith(
                color: _themeProvider.highlightColor,
                fontSize: SizeConfig.textMultiplier * 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Text(
              aboutMe,
              style: kTextThemeAbout.copyWith(
                fontSize: SizeConfig.textMultiplier * 1,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Text(
              bio,
              style: kTextThemeAbout.copyWith(
                color: Colors.grey,
                fontSize: SizeConfig.textMultiplier * 1,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Container(
              width: double.infinity,
              height: 5,
              color: _themeProvider.highlightColor,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Text(
              "Technologies I have worked with:",
              style: kTextThemeAbout.copyWith(
                color: _themeProvider.highlightColor,
                fontSize: SizeConfig.textMultiplier * 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: List.generate(
                technologyList.length,
                (index) => TechnologyUseWidget(
                  techName: technologyList[index],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Container(
              width: double.infinity,
              height: 5,
              color: _themeProvider.highlightColor,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    html.window.open(sorbonneUniversiteUrl, "https");
                  },
                  child: Image.network(
                    sorbonneUniversiteImageUrl,
                    width: SizeConfig.widthMultiplier * 10,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    html.window.open(flutterParisUrl, "https");
                  },
                  child: Image.network(
                    flutterParisImageUrl,
                    width: SizeConfig.widthMultiplier * 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
