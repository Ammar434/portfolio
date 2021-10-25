import 'package:flutter/material.dart';
import 'package:portfolio/sections/main_section.dart';
import 'package:theme_provider/theme_provider.dart';

import 'constants/size_config.dart';
import 'constants/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return ThemeProvider(
          saveThemesOnChange: true,
          defaultThemeId: darkTheme.id,
          themes: [darkTheme, lightTheme],
          child: ThemeConsumer(
            child: Builder(
              builder: (themeContext) => MaterialApp(
                theme: ThemeProvider.themeOf(themeContext).data,
                title: 'Ammar',
                initialRoute: "/",
                routes: {
                  "/": (context) => const MainSection(),
                  /*
                      "/workTogether": (context) => GetInTouch(),
                      "/details": (context) => ServiceDetails()*/
                },
              ),
            ),
          ),
        );
      });
    });
  }
}
