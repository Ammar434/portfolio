import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants/size_config.dart';
import 'package:portfolio/constants/url.dart';
import 'package:portfolio/sections/about/components/constant.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              "About Me",
              style: kTextThemeAbout.copyWith(
                fontSize: SizeConfig.textMultiplier * 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Get to know me",
              style: kTextThemeAbout.copyWith(
                fontSize: SizeConfig.textMultiplier * 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Lottie.network(
          lottieGetToKnowMe,
          height: SizeConfig.heightMultiplier * 5,
          width: SizeConfig.heightMultiplier * 5,
        ),
      ],
    );
  }
}
