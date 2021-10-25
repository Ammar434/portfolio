import 'package:flutter/material.dart';
import 'package:portfolio/constants/size_config.dart';
import 'package:portfolio/sections/about/components/constant.dart';
import 'package:theme_provider/theme_provider.dart';

class TechnologyUseWidget extends StatelessWidget {
  final String techName;

  const TechnologyUseWidget({Key? key, required this.techName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = ThemeProvider.themeOf(context).data;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: _themeProvider.highlightColor,
            size: SizeConfig.textMultiplier * 1,
          ),
          Text(
            " $techName ",
            style: kTextThemeAbout.copyWith(
                fontSize: SizeConfig.textMultiplier * 1),
          )
        ],
      ),
    );
  }
}
