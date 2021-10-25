import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/size_config.dart';

import 'components/build_about.dart';
import 'components/build_picture.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 50,
      child: Row(
        children: const [
          BuildPicture(),
          BuildAbout(),
        ],
      ),
    );
  }
}
