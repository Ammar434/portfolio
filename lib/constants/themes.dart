import 'package:flutter/material.dart';
import 'package:portfolio/constants/size_config.dart';
import 'package:theme_provider/theme_provider.dart';

import 'constants.dart';

AppTheme darkTheme = AppTheme(
  id: "custom_dark_theme", // Id(or name) of the theme(Has to be unique)
  description: "My Custom Dark Theme", // Description of theme
  data: ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kDarkPrimaryColor,
    appBarTheme: const AppBarTheme(backgroundColor: kDarkPrimaryColor),
    primaryColor: kDarkPrimaryColor,
    highlightColor: kDarkSecondaryColor,
    canvasColor: Colors.white,
    textTheme: TextTheme(
      headline1: const TextStyle(
        color: Colors.white,
      ),
      headline2: const TextStyle(
        color: Colors.white,
      ),
      headline3: const TextStyle(
        color: Colors.white,
      ),
      headline4: TextStyle(
          color: Colors.white, fontSize: SizeConfig.textMultiplier * 3),
    ),
  ),
);

AppTheme lightTheme = AppTheme(
  id: "custom_light_theme", // Id(or name) of the theme(Has to be unique)
  description: "My Custom Light Theme", // Description of theme
  data: ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kPrimaryColor,
    appBarTheme: const AppBarTheme(backgroundColor: kPrimaryColor),
    primaryColor: kPrimaryColor,
    highlightColor: kSecondaryColor,
    canvasColor: Colors.white,
    textTheme: TextTheme(
      headline1: const TextStyle(
        color: Colors.white,
      ),
      headline2: const TextStyle(
        color: Colors.white,
      ),
      headline3: const TextStyle(
        color: Colors.white,
      ),
      headline4: TextStyle(
          color: Colors.white, fontSize: SizeConfig.textMultiplier * 3),
    ),
  ),
);
